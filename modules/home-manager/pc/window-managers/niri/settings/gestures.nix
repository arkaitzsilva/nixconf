{
  flake.modules.homeManager.pc = { lib, osConfig, ... }: lib.mkIf osConfig.programs.niri.enable {
    xdg.configFile."niri/gestures.kdl".text = ''
      gestures {
        hot-corners {
          off
        }
      }
    '';
  };
}
