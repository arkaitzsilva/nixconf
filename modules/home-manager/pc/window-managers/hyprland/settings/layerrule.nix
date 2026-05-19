{
  flake.modules.homeManager.pc = {
    wayland.windowManager.hyprland.settings = {
      layerrule = [
        "animation fade, match:namespace ^awww-daemon$"
      ];
    };
  };
}
