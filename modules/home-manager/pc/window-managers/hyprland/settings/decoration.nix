{
  flake.modules.homeManager.pc = {
    wayland.windowManager.hyprland.settings = {
      decoration = {
        rounding = 10;
        active_opacity = 1.0;
        inactive_opacity = 1.0;
        shadow = {
          enabled = false;
        };
        blur = {
          enabled = false;
        };
      };
    };
  };
}
