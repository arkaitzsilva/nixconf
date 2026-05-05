{
  flake.modules.homeManager.pc = { lib, ... }: {
    options.wallpaper = {
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
