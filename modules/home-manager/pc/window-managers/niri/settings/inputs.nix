{
  flake.modules.homeManager.pc = { lib, osConfig, ... }: lib.mkIf osConfig.programs.niri.enable {
    xdg.configFile."niri/inputs.kdl".text = ''
      input {
        keyboard {
          xkb {
            layout "es"
          }
          numlock
        }
        touchpad {
          tap
          natural-scroll
        }
      }
    '';
  };
}
