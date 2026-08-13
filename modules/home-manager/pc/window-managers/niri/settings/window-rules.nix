{
  flake.modules.homeManager.pc = { config, ... }: {
    wayland.windowManager.niri.settings._children = [
      { "window-rule" = { "open-maximized-to-edges" = false; }; }
      { "window-rule" = {
          "geometry-corner-radius" = 10;
          "clip-to-geometry" = true;
        };
      }
      { "window-rule" = {
          match._props."app-id" = config.terminal.name;
          "default-column-width" = { proportion = 0.5; };
        };
      }
      { "window-rule" = {
          match._props."app-id" = "^(xdg-desktop-portal.*)$";
          "open-floating" = true;
          "default-column-width" = { fixed = 1200; };
          "default-window-height" = { fixed = 800; };
        };
      }
    ];
  };
}
