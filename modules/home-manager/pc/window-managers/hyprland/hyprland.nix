{
  flake.modules.homeManager.pc = { osConfig, ... }: {
    wayland.windowManager.hyprland.enable = osConfig.programs.hyprland.enable;
  };
}
