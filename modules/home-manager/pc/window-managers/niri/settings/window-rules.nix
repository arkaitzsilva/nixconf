{
  flake.modules.homeManager.pc = hmArgs: {
    xdg.configFile."niri/window-rules.kdl".text = ''
      window-rule {
        geometry-corner-radius 10
        clip-to-geometry true
      }

      window-rule {
        match app-id="${hmArgs.config.terminal.name}"
        default-column-width { proportion 0.5; }
      }
    '';
  };
}
