{
  flake.modules.homeManager.pc = { lib, config, ... }: {
    wayland.windowManager.hyprland.settings = {
      on = {
        _args = [
          "hyprland.start"
          (lib.generators.mkLuaInline ''
            function()
              hl.exec_cmd("${config.wallpaper.start-cmd}")
              ${lib.optionalString config.services.stasis.enable "hl.exec_cmd(\"systemctl --user start stasis\")"}
              ${lib.optionalString config.services.stasis.enable "hl.exec_cmd(\"kitty --single-instance --start-as=hidden\")"}
            end
          '')
        ];
      };
    };
  };
}
