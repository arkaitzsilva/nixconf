{ config, ...}:
let
  polyModule.scheme = ./color-schemes/${config.style.color-scheme.name}.yaml;
in {
  flake.modules = {
    nixos.base = polyModule;
    homeManager.base = polyModule;
  };
}
