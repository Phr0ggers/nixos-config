{pkgs, lib, config, ...}: {
  options = {
    hypr.enable = lib.mkEnableOption "enables hyprland and hyprpaper";
  };

  # Requires Hyprland to be enabled in configuration.nix

  config = lib.mkIf config.hypr.enable {

    home.packages = with pkgs; [
      hyprpaper
    ];


    home.file.".config/hypr".source = ../../dotfiles/hypr;
  };
}
