{ lib, ... }: {
  flake.modules.homeManager.pc = {
    options.editor = {
      name = lib.mkOption {
        type = lib.types.singleLineStr;
        default = null;
      };
    };
  };
}
