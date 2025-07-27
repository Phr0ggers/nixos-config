{pkgs, lib, config, ...}: {
  options = {
    wlogout.enable = lib.mkEnableOption "enables wlogout";
  };

  config = lib.mkIf config.wlogout.enable {
    programs.wlogout = {
      enable = true;
      layout = [
        {
          label = "shutdown";
          action = "poweroff";
          text = "Shutdown";
          keybind = "s";
        }
        {
          label = "reboot";
          action = "reboot";
          text = "Reboot";
          keybind = "r";
        }
        {
          label = "logout";
          action = "loginctl terminate-user $USER";
          text = "Logout";
          keybind = "l";
        }
        {
          label = "windows";
          action = "";
          text = "Windows";
          keybind = "w";
        }
      ];
      style = ''

      '';
    };
  };
}
