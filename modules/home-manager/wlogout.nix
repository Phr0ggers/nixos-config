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
          width = 0.2;
        }
        {
          label = "reboot";
          action = "reboot";
          text = "Reboot";
          keybind = "r";
          width = 0.2;
        }
        {
          label = "logout";
          action = "loginctl terminate-user $USER";
          text = "Logout";
          keybind = "l";
          width = 0.2;
        }
        {
          label = "windows";
          action = "";
          text = "Windows";
          keybind = "w";
          width = 0.2;
        }
      ];
    };
    home.file.".config/wlogout/style.css".source = ../../dotfiles/wlogout/style.css;
  };
}
