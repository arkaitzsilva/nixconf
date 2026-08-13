{
  flake.modules.homeManager.pc = {
    xdg.portal.config."niri" = {
      default = [ "luminous" ];
      "org.freedesktop.impl.portal.FileChooser" = [ "termfilechooser" ];
      "org.freedesktop.impl.portal.Settings" = [ "luminous" ];
    };
  };
}
