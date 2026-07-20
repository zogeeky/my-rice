{
	description = "For me!";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";

		home-manager = {
			url = "github:nix-community/home-manager/release-26.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = {self, nixpkgs, home-manager, ...}@inputs: let
		system = "x86_64-linux";
		homeStateVersion = "26.05";
		user = "zogeeky";
		hosts = [
			{ hostname = "hashstop"; stateVersion = "26.05"; }
		];

		pkgs = import nixpkgs {
			inherit system;
			config.allowUnfree = true;
			# overlays = [ ... ]; # сюда добавляй свои оверлеи, если появятся
		};

		makeSystem = { hostname, stateVersion }: nixpkgs.lib.nixosSystem {
			specialArgs = { inherit inputs stateVersion hostname user; };
			modules = [
				./hosts/${hostname}/configuration.nix
				# nixpkgs.hostPlatform и nixpkgs.pkgs (если нужно) задаются
				# внутри самого configuration.nix, а не тут
			];
		};

	in {
		nixosConfigurations = builtins.listToAttrs (map (host: {
			name = host.hostname;
			value = makeSystem { inherit (host) hostname stateVersion; };
		}) hosts);

		homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
			inherit pkgs;
			extraSpecialArgs = {
				inherit inputs homeStateVersion user;
			};

			modules = [
				./home-manager/home.nix
			];
		};
	};
}
