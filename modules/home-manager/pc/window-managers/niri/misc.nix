{
  flake.modules.homeManager.pc = { config, ... }: {
    xdg.configFile."niri/misc.kdl".text = ''
      cursor {
        // xcursor-theme "Nx-Snow"
        // xcursor-size 24
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
    '';
  };
}
