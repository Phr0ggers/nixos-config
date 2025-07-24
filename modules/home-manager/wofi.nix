{pkgs, lib, config, ...}: {
  options = {
    wofi.enable = lib.mkEnableOption "enables wofi";
  };

  config = lib.mkIf config.wofi.enable {
    programs.wofi = {
      enable = true;
      style = ''
        * {
          border-radius: 10px;
          outline: none;
          box-shadow: none;
          color: #a8a8a8;
          font-weight: 500;
          font-size: 16px;
          font-family: "JetBrainsMono", monospace;
        }

        window {
          margin: 0px;
          border: 3px solid #ffaf00;
          background-color: rgba(58, 58, 58, 0.9);
          outline: none;
        }

        #input {
          margin: 5px;
          color: #a8a8a8;
          border: none;
          background-color: #626262;
          outline: none;
        }

        #inner-box {
          margin: 5px;
          border: none;
          color: #a8a8a8;
        }

        #outer-box {
          margin: 5px;
          border: none;
        }

        #scroll {
          margin: 0px;
          border: none;
        }

        #text {
          margin: 5px;
          border: none;
        }

        #entry:selected {
          background-color: transparent;
          border: 3px solid #ffaf00;
        }
      '';
      settings = {
        sort_order = "alphabetical";
        width = "20%";
      };
    };
  };
}
