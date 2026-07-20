{ config, pkgs, ... }:
{
    programs.bash = {
        enable = true;
        shellAliases = {
            ll = "ls -l --color=auto";
            la = "ls -la --color=auto";
            ls = "ls --color=auto";
            n = "nvim";
            grep = "grep --color=auto";
            homeup = "home-manager switch -f ~/my-rice/home-manager/home.nix";
            glist = "nix profile history --profile /nix/var/nix/profiles/system";
            glist-del = "sudo nix profile wipe-history --profile /nix/var/nix/profiles/system";
        };

        sessionVariables = {
            EDITOR = "nvim";
        };

        initExtra = ''
        PS1='\w \[\033[0;32m\]$\[\033[0;0m\] '
        alias ..="cd .."
        '';
    };
}
