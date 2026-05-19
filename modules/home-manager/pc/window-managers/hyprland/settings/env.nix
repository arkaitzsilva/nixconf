{
  flake.modules.homeManager.pc = { config, ... }: {
    wayland.windowManager.hyprland.settings = {
      env = [
        "XCURSOR_THEME,${config.cursor.theme.name}"
        "XCURSOR_SIZE,${toString config.cursor.theme.size}"
      ];
    };
  };
}
