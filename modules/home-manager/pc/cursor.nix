{ self, ... }: {
  flake.modules.homeManager.pc = { config, pkgs, lib, ... }: let
    cursorPackage = lib.getAttrFromPath (lib.splitString "." config.style.cursor-theme.package) self.packages.${pkgs.stdenv.hostPlatform.system};
  in {
    home.pointerCursor = {
      enable = true;
      package = cursorPackage;
      name = config.style.cursor-theme.name;
      size = config.style.cursor-theme.size;
      x11.enable = true;
    };
  };
}
