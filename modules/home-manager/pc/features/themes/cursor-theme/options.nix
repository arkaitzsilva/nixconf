{
  flake.modules.homeManager.pc = { lib, ... }: {
    options.cursor.theme = {
      name = lib.mkOption {
        type = lib.types.singleLineStr;
        default = null;
      };
      size = lib.mkOption {
        type = lib.types.int;
        default = null;
      };
    };
  };
}
