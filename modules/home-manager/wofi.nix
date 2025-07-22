{pkgs, lib, config, ...}: {
  options = {
    wofi.enable = lib.mkEnableOption "enables wofi";
  };

  config = lib.mkIf config.wofi.enable {
    programs.wofi.enable = true;
  };
}
