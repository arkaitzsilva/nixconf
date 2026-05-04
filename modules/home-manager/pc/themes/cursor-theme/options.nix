{
  flake.modules.homeManager.pc = { lib, ... }: {
    options.cursor.theme = {
      name = lib.mkOption {
        type = lib.types.singleLineStr;
        default = null;
      };
    };
  };
}
