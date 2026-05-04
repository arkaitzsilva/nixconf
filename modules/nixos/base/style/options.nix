{
  flake.modules.nixos.base = { lib, ... }: {
    options = {
      theme = lib.mkOption {
        type = lib.types.singleLineStr;
        default = "nord";
      };
    };
  };
}
