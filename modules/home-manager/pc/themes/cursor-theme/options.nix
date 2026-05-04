{ lib, ... }: {
  flake.modules.homeManager.pc = {
    options.cursor.theme = {
      name = lib.mkOption {
        type = lib.types.singleLineStr;
        default = null;
      };
    };
  };
}
