{
  flake.modules.homeManager.pc = { lib, ... }: {
    options.terminal = {
      name = lib.mkOption {
        type = lib.types.singleLineStr;
        default = null;
      };
      path = lib.mkOption {
        type = lib.types.path;
        default = null;
      };
    };
  };
}
