{ config, pkgs, ... }:

{
  imports = [
    ../../modules/home-manager/tmux.nix
  ];

  home.username = "sebastianf";
  home.homeDirectory = "/home/sebastianf";

  home.stateVersion = "25.05"; # Please read the comment before changing.

  home.packages = [
  ];

  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;


  programs.neovim = {
    enable = true;
  };

  programs.git = {
    enable = true;
    userName = "sebastianf";
    userEmail = "sebastian_fohringer@icloud.com";

    extraConfig = {
      init.defaultBranch = "main";
    };
  };

  programs.kitty = {
    enable = true;

    themeFile = "GruvboxMaterialDarkMedium";

    font = {
      name = "JetBrainsMono Nerd Font";
      size = 12;
    };
    settings = {
      enable_audio_bell = "no";
      window_padding_width = 5;
      confirm_os_window_close = 0;
    };
  };

}
