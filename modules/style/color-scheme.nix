{ config, ...}:
let
  polyModule.scheme = ./color-schemes/${config.theme.name}.yaml;
in {
  flake.modules = {
    nixos.base = polyModule;
    homeManager.base = polyModule;
  };
}
