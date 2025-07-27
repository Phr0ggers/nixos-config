{pkgs, lib, config, ...}: {
  options = {
    waybar.enable = lib.mkEnableOption "enables waybar";
  };

  config = lib.mkIf config.waybar.enable {
    programs.waybar = {
      enable = true;
    };

    home.file.".config/waybar".source = ../../dotfiles/waybar;
  };
}
