{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    programs.yazi.plugins."mount" = {
      package = pkgs.yaziPlugins.mount;
    };
  };
}
