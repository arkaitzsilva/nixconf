{
  flake.modules.homeManager.pc = { ... }: {
    wayland.windowManager.niri.settings.input = {
      keyboard = {
        xkb.layout = "es";
        numlock = {};
      };
      touchpad = {
        tap = {};
        "natural-scroll" = {};
      };
    };
  };
}
