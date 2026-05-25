{
  flake.modules.homeManager.pc = {
    programs.yazi = {
      settings.plugin = {
        prepend_fetchers = [
          { id = "git"; name = "*";  run = "git"; }
          { id = "git"; name = "*/"; run = "git"; }
        ];
      };

      theme = {
        git = {
          unknown_sign = "?";
          modified_sign = "M";
          deleted_sign = "D";
        };
      };
    };
  };
}
