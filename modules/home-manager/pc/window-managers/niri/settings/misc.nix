{
  flake.modules.homeManager.pc = { lib, config, ... }: {
    wayland.windowManager.niri = {
      settings = {
        cursor = {
          "xcursor-theme" = config.style.cursor-theme.name;
          "xcursor-size" = config.style.cursor-theme.size;
          "hide-when-typing" = {};
          "hide-after-inactive-ms" = 10000;
        };
        overview = {
          zoom = 0.75;
          "backdrop-color" = config.scheme.withHashtag.base00;
        };
        "prefer-no-csd" = {};
        "hotkey-overlay"."skip-at-startup" = {};
        "screenshot-path" = "${config.xdg.userDirs.pictures}/Screenshots/Screenshot from %Y-%m-%d %H-%M-%S.png";
      };
      
      extraConfig = ''
        ${lib.optionalString config.services.stasis.enable "spawn-sh-at-startup \"systemctl --user start stasis\""}
        ${lib.optionalString config.programs.kitty.enable "spawn-sh-at-startup \"kitty --single-instance --start-as=hidden\""}
      '';
    };
  };
}
