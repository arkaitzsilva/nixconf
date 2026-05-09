{
  flake.modules.homeManager.pc = {
    xdg.configFile."niri/gestures.kdl".text = ''
      gestures {
        hot-corners {
          off
        }
      }
    '';
  };
}
