{
  flake.modules.homeManager.pc = { lib, ... }: {
    options.terminal = {
      name = lib.mkOption {
        type = lib.types.singleLineStr;
        default = null;
      };
      font-size = lib.mkOption {
        type = lib.types.int;
        default = null;
      };
      start-cmd = lib.mkOption {
        type = lib.types.singleLineStr;
        default = null;
      };
    };
  };
}
