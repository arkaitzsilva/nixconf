{
  flake.modules.nixos.base = { config, pkgs, ... }: {
    config.scheme = "${pkgs.base16-schemes}/share/themes/${config.theme}.yaml";
  };
}
