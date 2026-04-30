{
  flake.modules.homeManager.pc = { config, ... }: {
    xdg.configFile."xdg-desktop-portal-luminous/config.toml".text = ''
      color_scheme = "${config.scheme.variant}"
      accent_color = "${config.scheme.withHashtag.base0C}"
      contrast = "normal"
      reduced_motion = "no-preference"
      screenshot_permission_check = false
    '';
  };
}
