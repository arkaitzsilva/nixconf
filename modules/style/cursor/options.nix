{
  flake.modules.homeManager.pc = { lib, ... }: {
    options.style.cursor-theme = {
      name = lib.mkOption {
        type = lib.types.singleLineStr;
        default = null;
      };
      size = lib.mkOption {
        type = lib.types.int;
        default = null;
      };
      package = lib.mkOption {
        type = lib.types.str;
        default = null;
      };
    };
  };
}
