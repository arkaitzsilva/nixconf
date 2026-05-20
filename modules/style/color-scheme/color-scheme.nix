{ config, ...}:
let
  polyModule.scheme = ./themes/${config.theme.name}.yaml;
in {
  flake.modules = {
    nixos.base = polyModule;
    homeManager.base = polyModule;
  };
}
