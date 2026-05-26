{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    programs.yazi.plugins."git" = {
      package = pkgs.yaziPlugins.git;
    };
  };
}
