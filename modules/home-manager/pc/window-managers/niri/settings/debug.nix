{
  flake.modules.homeManager.pc = { ... }: {
    wayland.windowManager.niri.settings.debug."ignore-drm-device" = "/dev/dri/renderD129";
  };
}
