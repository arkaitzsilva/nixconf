{
  flake.modules.homeManager.pc = { lib, config, ... }: {
    wayland.windowManager.hyprland.settings = with lib.generators; {
      env = [
        {
          _args = [
            "XCURSOR_THEME"
            (mkLuaInline "\"${config.style.cursor-theme.name}\"")
          ];
        }
        {
          _args = [
            "XCURSOR_SIZE"
            (mkLuaInline "\"${toString config.style.cursor-theme.size}\"")
          ];
        }
      ];
    };
  };
}
