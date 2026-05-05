{
  flake.modules.nixos.style = { config, pkgs, ... }: {
    config.theme ={
      name = "retrowave";
      custom = true;
    };
    config.scheme =
      if config.theme.custom then ./custom-schemes/${config.theme.name}.yaml
      else config.theme"${pkgs.base16-schemes}/share/themes/${config.theme}.yaml";
  };
}
