{ lib, ... }: {
  options = {
    theme = {
      name = lib.mkOption {
        type = lib.types.singleLineStr;
        default = "nord";
      };
      custom = lib.mkOption {
        type = lib.types.bool;
        default = false;
      };
    };
  };
}
