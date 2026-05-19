{
  flake.modules.homeManager.pc = { lib, ... }: {
    options.icon.theme = {
      name = lib.mkOption {
        type = lib.types.singleLineStr;
        default = null;
      };
    };
  };
}
