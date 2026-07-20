{ pkgs, config, ... }:
{
    programs.git = {
        enable = true;

#        userName = "zogeeky";
#        userEmail = "psauz9@proton.me";

        settings = {
            init.defaultBranch = "main";
            core.editor = "nvim";

            user = {
                name = "zogeeky";
                email = "psauz9@proton.me";
            };
        };

        ignores = [
            ".DS_Store"
            "*.swp"
            ".envrc"
        ];
    };
}
