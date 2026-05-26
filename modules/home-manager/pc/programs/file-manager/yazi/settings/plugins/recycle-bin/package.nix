{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    programs.yazi.plugins."recycle-bin" = {
      package = pkgs.yaziPlugins.recycle-bin;
    };
  };
}
