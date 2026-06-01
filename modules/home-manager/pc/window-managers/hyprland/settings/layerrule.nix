{
  flake.modules.homeManager.pc = {
    wayland.windowManager.hyprland.settings = {
      layer_rule = [
        {
          _args = [
            {
              name = "awww-daemon-fade";
              match = { namespace = "^awww-daemon$"; };
              animation = "fade";
            }
          ];
        }
      ];
    };
  };
}
