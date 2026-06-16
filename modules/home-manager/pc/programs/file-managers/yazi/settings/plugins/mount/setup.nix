{
  flake.modules.homeManager.pc = {
    programs.yazi.plugins."mount" = {
      setup = false;
    };
  };
}
