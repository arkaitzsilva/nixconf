{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    qt.platformTheme = {
      name = "qt6ct";
      package = pkgs.qt6Packages.qt6ct;
    };
  };
}
