{pkgs, lib, config, ...}: {
  options = {
    hypr.enable = lib.mkEnableOption "enables hyprland and hyprpaper";
  };

  config = lib.mkIf config.waybar.enable {
    programs.hyprland = {
      enable = true;
    };

    home.programs = with pkgs; [
      hyprpaper
    ];


    home.file.".config/hypr".source = ../../dotfiles/hypr;
  };
}
