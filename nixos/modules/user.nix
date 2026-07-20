{ pkgs, user, ... }:
{
    users = {
        users.${user} = {
            isNormalUser = true;
            extraGroups = [
                "wheel"
                "network"
                "networkmanager"
                "audio"
                "video"
                "input"
            ];
        };
    };
}
