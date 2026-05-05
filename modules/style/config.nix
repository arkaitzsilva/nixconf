{
  flake.modules.nixos.style = { config, pkgs, ... }: {
    config.theme ={
      name = "nord";
      custom = false;
    };
    config.scheme =
      if config.theme.custom then ./custom-schemes/${config.theme.name}.yaml
      else "${pkgs.base16-schemes}/share/themes/${config.theme.name}.yaml";
  };
}
