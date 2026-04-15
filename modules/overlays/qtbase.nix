{
  flake.overlays = {
    qtbase = (final: prev: {
      qt6Packages = prev.qt6Packages.overrideScope (qt6Final: qt6Prev: {
        qtbase = qt6Prev.qtbase.override {
          withGtk3 = false;
        };
      });
      kdePackages = prev.kdePackages.overrideScope (kdeFinal: kdePrev: {
        qtbase = kdePrev.qtbase.override {
          withGtk3 = false;
        };
      });
    });
  };
}
