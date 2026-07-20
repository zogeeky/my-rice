# Not For Everyone

1. **Clone**
```sh
git clone https://github.com/zogeeky/my-rice.git
cd my-rice
```

2. **Copy the host**
```sh
cd hosts
cp -r hashstop <your hostname>
cd <your hostname>
```

3. **Put hardware-configuration**
```sh
sudo cp /etc/nixos/hardware-configuration ./
```

4. **Edit the configurations if needed**

5. **Edit flake.nix**
```diff
...
    outputs = {self, nixpkgs, home-manager, ...}@inputs: let
        system = "x86_64-linux";
--      homeStateVersion = "26.05";
++      homeStateVersion = "<Your HM state version>";
--      user = "zogeeky";
++      user = "<your_username>";
        hosts = [
--          { hostname = "hashstop"; stateVersion = "26.05"; }
++          { hostname = "<your_hostname"; stateVersion = "<your_state_version>"; }
        ];
...
```

6. **Rebuilding**
```sh
cd my-rice
git add .
sudo nixos-rebuild switch --flake ./#<your-hostname>
home-manager switch .#<your-username>
```
