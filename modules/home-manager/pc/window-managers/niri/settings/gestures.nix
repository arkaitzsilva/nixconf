{
  flake.modules.homeManager.pc = { ... }: {
    wayland.windowManager.niri.settings.gestures."hot-corners".off = {};
  };
}
