{ pkgs, ... }:

{
    nixpkgs.config.allowUnfree = true;

    home.packages = with pkgs; [
        # Desktop apps
        swayimg
        mpv
        obs-studio
        obsidian
        ayugram-desktop

        # CLI utils
        cliphist
        alsa-utils
        brightnessctl
        ffmpeg
        fzf
        btop
        ntfs3g
        microfetch
        ripgrep
        unzip
        w3m
        wget
        wl-clipboard
        yt-dlp
        zip
        nerd-fonts.ubuntu-sans

        # Coding stuff
        go
        nodejs
        python314

        # WM stuff
        swaybg
        libnotify
        xdg-desktop-portal-gtk
        xdg-desktop-portal-hyprland

        # Other
        nix-prefetch-scripts
        aircrack-ng
    ];
}
