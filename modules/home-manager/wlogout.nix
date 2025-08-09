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
          text = "[S]hutdown";
          keybind = "s";
          height = 0.5;
        }
        {
          label = "reboot";
          action = "reboot";
          text = "[R]eboot";
          keybind = "r";
          height = 0.5;
        }
        {
          label = "logout";
          action = "loginctl terminate-user $USER";
          text = "[L]ogout";
          keybind = "l";
          height = 0.5;
        }
        {
          label = "windows";
          action = "systemctl reboot --boot-loader-entry=auto-windows --boot-loader-menu=1";
          text = "[W]indows";
          keybind = "w";
          height = 0.5;
        }
      ];
    };
    home.file.".config/wlogout/style.css".source = ../../dotfiles/wlogout/style.css;
  };
}
