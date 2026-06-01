{
  flake.modules.homeManager.pc = { lib, ... }: {
    options.file-manager = {
      name = lib.mkOption {
        type = lib.types.singleLineStr;
        default = null;
      };
      path = lib.mkOption {
        type = lib.types.path;
        default = null;
      };
      start-cmd = lib.mkOption {
        type = lib.types.singleLineStr;
        default = null;
      };
    };
  };
}
