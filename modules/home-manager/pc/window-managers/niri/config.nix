{
  flake.modules.homeManager.pc = {
    xdg.configFile."niri/config.kdl".text = ''
      include "inputs.kdl"
      include "binds.kdl"
      include "layout.kdl"
      include "misc.kdl"
      include "window-rules.kdl"
    '';
  };
}
