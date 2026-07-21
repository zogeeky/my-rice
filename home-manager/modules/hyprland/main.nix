{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    configType = "hyprlang";
    settings = {
      env = [
        # Hint Electron apps to use Wayland
        "NIXOS_OZONE_WL,1"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "QT_QPA_PLATFORM,wayland"
        "XDG_SCREENSHOTS_DIR,$HOME/screens"
      ];

      monitor = ",1766x768@60,auto,1";
      "$mainMod" = "SUPER";
      "$terminal" = "foot";
      "$fileManager" = "$terminal -e sh -c 'ranger'";
      "$menu" = "wofi";

      exec-once = [
        "wl-paste --type text --watch cliphist store"
        "wl-paste --type image --watch cliphist store"
        "swaybg -m fill -i ~/Pictures/Wallpaper/m.png"
        "waybar"
#        "swaybg -m fill -i $(find ~/Pictures/Wallpaper -type f \\( -name '*.jpg' -o -name '*.png' -o -name '*.jpeg' \\) | shuf -n 1)"
      ];

      general = {
        gaps_in = 0;
        gaps_out = 3;

        border_size = 2;

        "col.active_border" = "rgb(BE5046)";
        "col.inactive_border" = "rgb(5C6370)";

        resize_on_border = true;

        allow_tearing = false;
        layout = "dwindle";
      };

      decoration = {
        rounding = 0;

        active_opacity = 1.0;
        inactive_opacity = 1.0;

        shadow = {
          enabled = false;
        };

        blur = {
          enabled = false;
        };
      };

      animations = {
        enabled = false;
      };

      input = {
        kb_layout = "us,kz";
        kb_options = "grp:alt_shift_toggle";
      };


      master = {
        new_status = "slave";
        new_on_top = true;
        mfact = 0.5;
      };

      dwindle = {
        preserve_split = true;
        smart_split = false;
      };

      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };

    };
  };
}
