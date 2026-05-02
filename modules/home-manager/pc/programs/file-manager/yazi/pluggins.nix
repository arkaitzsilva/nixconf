{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    programs.yazi.plugins = with pkgs; {
      mount = yaziPlugins.mount;
      git = yaziPlugins.git;
      full-border = yaziPlugins.full-border;
      recycle-bin = yaziPlugins.recycle-bin;
      ouch = yaziPlugins.ouch;
    };
  };
}
