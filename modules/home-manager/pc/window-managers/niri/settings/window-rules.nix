{
  flake.modules.homeManager.pc = hmArgs: {
    xdg.configFile."niri/window-rules.kdl".text = ''
      // Force windows not to open maximized to edges.
      window-rule {
        open-maximized-to-edges false
      }

      // Enable rounded corners for all windows.
      window-rule {
        geometry-corner-radius 10
        clip-to-geometry true
      }

      // Set `foot` app to open with half size.
      window-rule {
        match app-id="${hmArgs.config.terminal.name}"
        default-column-width { proportion 0.5; }
      }

      // Set XDG portal windows as floating windows with fixed size.
      window-rule {
        match app-id=r#"^(xdg-desktop-portal.*)$"#
        open-floating true
        default-column-width { fixed 1200; }
        default-window-height { fixed 800; }
      }
    '';
  };
}
