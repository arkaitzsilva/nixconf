{
  flake.modules.homeManager.pc = {
    xdg.configFile."niri/debug.kdl".text = ''
      debug {
        ignore-drm-device "/dev/dri/renderD129"
      }
    '';
  };
}
