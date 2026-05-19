{
  flake.modules.homeManager.pc = { lib, ... }: {
    options.wallpaper = {
      path = lib.mkOption {
        type = lib.types.singleLineStr;
        default = null;
      };
      name = lib.mkOption {
        type = lib.types.singleLineStr;
        default = null;
      };
      backend = lib.mkOption {
        type = lib.types.singleLineStr;
        default = null;
      };
      start-cmd = lib.mkOption {
        type = lib.types.singleLineStr;
        default = null;
      };
    };
  };
}
