{
  flake.modules.nixos.pc = { pkgs, lib, config, ... }: let
    font = config.style.fonts;
    fontPackage = name: lib.getAttrFromPath (lib.splitString "." name) pkgs;
  in {
    fonts.packages = map (f: fontPackage f.package) [
      font.serif
      font.sansSerif
      font.monospace
      font.emoji
    ];
    fonts.fontconfig = {
      enable = true;
      defaultFonts = {
        sansSerif = [ font.sansSerif.name ];
        serif     = [ font.serif.name ];
        monospace = [ font.monospace.name ];
        emoji     = [ font.emoji.name ];
      };
    };
  };
}
