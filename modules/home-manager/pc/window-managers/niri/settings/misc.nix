{
  flake.modules.homeManager.pc = { lib, config, osConfig, ... }: lib.mkIf osConfig.programs.niri.enable {
    xdg.configFile."niri/misc.kdl".text = ''
      cursor {
        xcursor-theme "${config.cursor.theme.name}"
        xcursor-size ${toString config.cursor.theme.size}
        hide-when-typing
        hide-after-inactive-ms 10000
      }
      overview {
        zoom 0.75
        backdrop-color "${config.scheme.withHashtag.base00}"
      }
      prefer-no-csd
      hotkey-overlay {
        skip-at-startup
      }
      screenshot-path "${config.xdg.userDirs.pictures}/Screenshots/Screenshot from %Y-%m-%d %H-%M-%S.png"
      
      spawn-sh-at-startup "${config.wallpaper.start-cmd}"
      ${lib.optionalString config.services.stasis.enable "spawn-sh-at-startup \"systemctl --user start stasis\""}
    '';
  };
}
