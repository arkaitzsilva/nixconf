{
  flake.modules.homeManager.pc = { lib, config, ... }: {
    wayland.windowManager.hyprland.settings = {
      exec-once = [
        "${config.wallpaper.start-cmd}"
      ] ++ lib.optionals config.services.stasis.enable [ "systemctl --user start stasis" ];
    };   
  };
}
