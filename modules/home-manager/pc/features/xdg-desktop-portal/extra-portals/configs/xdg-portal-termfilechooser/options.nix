{
  flake.modules.homeManager.pc = { lib, ... }: {
    options.xdg.termfilechooser = {
      wrapper = lib.mkOption {
        type = lib.types.singleLineStr;
        default = null;
      };
      term-cmd = lib.mkOption {
        type = lib.types.singleLineStr;
        default = null;
      };
    };
  };
}
