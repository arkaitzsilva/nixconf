{
  flake.modules.nixos.base = { lib, config, pkgs, ... }: {
    options = {
      theme = lib.mkOption {
        type = lib.types.singleLineStr;
        default = "nord";
      };
    };
    config.scheme = "${pkgs.base16-schemes}/share/themes/${config.theme}.yaml";
  };
}
