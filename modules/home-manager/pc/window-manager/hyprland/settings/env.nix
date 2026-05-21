{
  flake.modules.homeManager.pc = { config, ... }: {
    wayland.windowManager.hyprland.settings = {
      env = [
        "XCURSOR_THEME,${config.style.cursor-theme.name}"
        "XCURSOR_SIZE,${toString config.style.cursor-theme.size}"
      ];
    };
  };
}
