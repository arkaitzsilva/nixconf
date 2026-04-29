# Remove geoclue2 (it uses gtk)
{
  flake.overlays.xdg-desktop-portal = (final: prev: {
    xdg-desktop-portal = (prev.xdg-desktop-portal.override {
      enableGeoLocation = false;
    }).overrideAttrs(oldAttrs: {
      doCheck = false;
    });
  });
}
