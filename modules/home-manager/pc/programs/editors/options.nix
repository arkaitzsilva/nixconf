{
  flake.modules.homeManager.pc = { lib, ... }: {
    options.editor = {
      name = lib.mkOption {
        type = lib.types.singleLineStr;
        default = null;
      };
    };
  };
}
