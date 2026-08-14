{ config, lib, ...}:
let
  # The home-manager side imports `./options.nix` itself, so only the data
  # needs re-exporting here. The conversion helpers are read-only and must
  # not be redefined through this copy.
  polyModule.style.fonts = lib.removeAttrs config.style.fonts [ "toPx" "toPxRounded" ];
in {
  flake.modules = {
    nixos.base = polyModule;
    homeManager.base = polyModule;
  };
}
