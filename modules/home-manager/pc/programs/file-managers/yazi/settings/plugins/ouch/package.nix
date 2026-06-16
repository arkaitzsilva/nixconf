{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    programs.yazi.plugins."ouch" = {
      package = pkgs.yaziPlugins.ouch;
    };
  };
}
