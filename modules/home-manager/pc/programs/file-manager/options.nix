{ lib, ... }: {
  flake.modules.homeManager.pc = {
    options.file-manager = {
      name = lib.mkOption {
        type = lib.types.singleLineStr;
        default = null;
      };
      path = lib.mkOption {
        type = lib.types.path;
        default = null;
      };
      open-cmd = lib.mkOption {
        type = lib.types.singleLineStr;
        default = null;
      };
    };
  };
}
