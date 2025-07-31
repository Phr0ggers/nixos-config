{pkgs, lib, config, ...}: {
  options = {
    zathura.enable = lib.mkEnableOption "enables zathura";
  };

  config = lib.mkIf config.zathura.enable {
    programs.zathura = {
      enable = true;
      options = {
        recolor = "true";
        default-bg = "rgba(58, 58, 58, 0.9)";
        recolor-lightcolor = "rgba(0,0,0,0)";
        adjust-open = "width";
        guioptions = "";
        first-page-column = "1:2";
      };
    };

  };
}
