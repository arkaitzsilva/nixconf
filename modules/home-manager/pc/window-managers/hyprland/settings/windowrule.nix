{
  flake.modules.homeManager.pc = {
    wayland.windowManager.hyprland.settings = {
      window_rule = [
        {
          _args = [
            {
              name = "xdg-portals-float";
              match = { class = "^(xdg-desktop-portal.*)$"; };
              float = true;
              size = "1200 800";
              center = true;
              stay_focused = true;
              animation = "popin";
            }
          ];
        }
      ];
    };
  };
}
