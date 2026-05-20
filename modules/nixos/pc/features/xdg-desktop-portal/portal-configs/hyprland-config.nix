{
  flake.modules.nixos.pc = {
    xdg.portal.config.hyprland = {
      default = [ "luminous" ];
      "org.freedesktop.impl.portal.FileChooser" = [ "termfilechooser" ];
    };
  };
}
