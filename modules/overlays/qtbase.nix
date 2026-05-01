# Remove GTK dependency.
{
  flake.overlays.qtbase = (final: prev: {
    qt6Packages = prev.qt6Packages.overrideScope (qt6PackagesFinal: qt6PackagesPrev: {
      qtbase = qt6PackagesPrev.qtbase.override {
        withGtk3 = false;
      };
    });
    qt6 = prev.qt6.overrideScope (qt6Final: qt6Prev: {
      qtbase = qt6Prev.qtbase.override {
        withGtk3 = false;
      };
    });
  });
}
