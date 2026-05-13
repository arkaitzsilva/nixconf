{
  flake.modules.homeManager.pc = { lib, osConfig, ... }: lib.mkIf osConfig.programs.niri.enable {
    xdg.configFile."niri/debug.kdl".text = ''
      debug {
        ignore-drm-device "/dev/dri/renderD129"
      }
    '';
  };
}
