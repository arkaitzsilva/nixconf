{ lib, ... }: {
  options.style.color-scheme = {
    name = lib.mkOption {
      type = lib.types.singleLineStr;
      default = null;
    };
  };
}
