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

		makeSystem = { hostname, stateVersion }: nixpkgs.lib.nixosSystem {
			system = system;
			specialArgs = { inherit inputs stateVersion hostname user; };
			modules = [
				./hosts/${hostname}/configuration.nix
			];
		};

	in {
		nixosConfigurations = nixpkgs.lib.foldl' (config: host: config // {
			"${host.hostname}" = makeSystem {
				inherit (host) hostname stateVersion;
			};
		}) {} hosts;

		homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages.${system};
			extraSpecialArgs = {
				inherit inputs homeStateVersion user;
			};

			modules = [
				./home-manager/home.nix
			];
		};
	};
}
