{
  flake.modules.nixos.pc = {
    xdg.portal.config.niri = {
      default = [ "luminous" ];
      "org.freedesktop.impl.portal.FileChooser" = [ "termfilechooser" ];
    };
  };
}
