{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    programs.yazi.plugins."full-border" = {
      package = pkgs.yaziPlugins.full-border;
    };
  };
}
