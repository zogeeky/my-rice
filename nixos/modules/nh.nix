{ user, ... }:
{
    programs.nh = {
        enable = true;
        flake = "/home/${user}/flake";
    };

    services.getty.autologinUser = user;
}
