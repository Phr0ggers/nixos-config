{ config, pkgs, ... }: {

  home.username = "sebastianf";
  home.homeDirectory = "/home/sebastianf";

  home.stateVersion = "25.05"; # Please read the comment before changing.

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    discord-ptb
    tmux
    sysstat
    bat
    hyprpicker
    hyprpaper
    overskride
    nwg-look
  ];

  home.file = {
  };

  imports = [
    ../../modules/home-manager/wofi.nix
    ../../modules/home-manager/wlogout.nix
    ../../modules/home-manager/waybar.nix
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;

  programs.bash.enable = true;

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
      background_opacity = 0.93;
      background_blur = 50;
      scrollback_lines = 2000;
    };
  };

  programs.direnv = {
    enable = true;
    enableBashIntegration = true;
    nix-direnv.enable = true;
    silent = true;
  };

  wofi.enable = true;
  wlogout.enable = true;

  waybar.enable = true;
}
