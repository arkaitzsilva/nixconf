{
  flake.modules.homeManager.pc = { lib, ... }: {
    options.style.icon-theme = {
      name = lib.mkOption {
        type = lib.types.singleLineStr;
        default = null;
      };
    };
  };
}
