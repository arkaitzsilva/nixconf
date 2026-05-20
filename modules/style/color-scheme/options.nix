{ lib, ... }: {
  options = {
    theme = {
      name = lib.mkOption {
        type = lib.types.singleLineStr;
        default = null;
      };
    };
  };
}
