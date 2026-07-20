# 𝐍𝐢𝐱𝐎𝐒 𝐑𝐢𝐜𝐞

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

7. **Enjoy**
![img](image_2026-07-20_17-01.31.png)

- - -

## Keybinds
| Key | Action |
| --- | ------ |
| Super + Return | Open the Terminal |
| Super + Q | Close the Window |
| Super + D | Dmenu |
| Super + V | Clipboard |
| Super + F | Floating mode |
| Super + N | Notification history |
| Super + L | Lock the sceen |

## Software included
- Neovim (lil bit customized ~~no lsp~~)
- Chromium
- Foot terminal
- OBS Studio
- MPV video player
- Zathura pdf reader
- Btop++ task manager
- Obsidian
