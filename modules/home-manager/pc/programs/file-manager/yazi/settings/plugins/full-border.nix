{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    programs.yazi = {
      plugins."full-border" = pkgs.yaziPlugins.full-border;
      settings.plugins."full-border" = {
        package = pkgs.yaziPlugins.full-border;
        setup = true;
        settings = {
          type = "ui.Border.ROUNDED";
        };
      };
    };
  };
}
