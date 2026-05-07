{ inputs, config, ...}:
let
  polyModule.scheme =
    if config.theme.custom then ./custom-schemes/${config.theme.name}.yaml
    else "${inputs.tinted-schemes}/share/themes/${config.theme.name}.yaml";
in {
  flake.modules = {
    nixos.base = polyModule;
    homeManager.base = polyModule;
  };
}
