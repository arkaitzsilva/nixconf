{
  flake.modules.homeManager.pc = hmArgs: {
    xdg.configFile."niri/window-rules.kdl".text = ''
      window-rule {
        open-maximized-to-edges false
      }

      window-rule {
        geometry-corner-radius 10
        clip-to-geometry true
      }

      window-rule {
        match app-id="${hmArgs.config.terminal.name}"
        default-column-width { proportion 0.5; }
      }

      window-rule {
        match app-id=r#"^(xdg-desktop-portal.*)$"#
        open-floating true
        default-column-width { fixed 1200; }
        default-window-height { fixed 800; }
      }
    '';
  };
}
