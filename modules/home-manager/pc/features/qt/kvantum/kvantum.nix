{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    qt.style = {
      name = "kvantum";
      package = pkgs.qt6Packages.qtstyleplugin-kvantum;
    };
  };
}
