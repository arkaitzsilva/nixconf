{
  flake.modules.homeManager.pc = {
    wayland.windowManager.hyprland.settings = {
      config = {
        input = {
          kb_layout = "es";
          follow_mouse = 0;
          sensitivity = 0;
          touchpad = {
            natural_scroll = false;
          };
        };
      };
    };   
  };
}
