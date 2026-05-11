{
  flake.modules.homeManager.base = { lib, ... }: {
    options = {
      xdg.userDirs.names = {
        documents = lib.mkOption {
          type = lib.types.singleLineStr;
          default = null;
        };
        download = lib.mkOption {
          type = lib.types.singleLineStr;
          default = null;
        };
        pictures = lib.mkOption {
          type = lib.types.singleLineStr;
          default = null;
        };
        videos = lib.mkOption {
          type = lib.types.singleLineStr;
          default = null;
        };
        desktop = lib.mkOption {
          type = lib.types.singleLineStr;
          default = null;
        };
        music = lib.mkOption {
          type = lib.types.singleLineStr;
          default = null;
        };
        templates = lib.mkOption {
          type = lib.types.singleLineStr;
          default = null;
        };
        publicShare = lib.mkOption {
          type = lib.types.singleLineStr;
          default = null;
        };
      };
    };
  };
}
