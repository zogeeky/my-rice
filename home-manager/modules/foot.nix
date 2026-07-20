{lib, ...}:
{
    fonts.fontconfig.enable = true;
    programs.foot = {
        enable = true;
        settings = {
            main = {
                font = "UbuntuSansMonoNerdFont:size=14";
                pad = "10x10";
            };

            colors-dark = {
                foreground = "E6EDF3";
                background = "010409";

                regular0 = "484F58"; #black
                regular1 = "FF7B72"; #red
                regular2 = "3FB950"; #green
                regular3 = "D29922"; #yellow
                regular4 = "58A6FF"; #blue
                regular5 = "BC8CFF"; #magenta
                regular6 = "39C5CF"; #cyan
                regular7 = "B1BAC4"; #white

                bright0 = "6E7681"; #black
                bright1 = "FFA198"; #red
                bright2 = "56D364"; #green
                bright3 = "E3B341"; #yellow
                bright4 = "79C0FF"; #blue
                bright5 = "D2A8FF"; #magenta
                bright6 = "56D4DD"; #cyan
                bright7 = "FFFFFF"; #white
            };
        };
    };
}
