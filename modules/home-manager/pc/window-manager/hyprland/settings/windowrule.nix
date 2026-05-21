{
  flake.modules.homeManager.pc = {
    wayland.windowManager.hyprland.settings = {
      windowrule = [
        {
          name = "xdg-portals-float";
          "match:class" = "^(xdg-desktop-portal.*)$";
          float = "on";
          size = "1200 800";
          center = "on";
          stay_focused = "on";
          animation = "popin";
        }
      ];
    };
  };
}
