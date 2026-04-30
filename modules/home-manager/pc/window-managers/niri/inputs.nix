{
  flake.modules.homeManager.pc = {
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
