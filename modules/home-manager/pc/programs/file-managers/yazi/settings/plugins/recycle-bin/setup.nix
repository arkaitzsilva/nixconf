{
  flake.modules.homeManager.pc = {
    programs.yazi.plugins."recycle-bin" = {
      setup = true;
    };
  };
}
