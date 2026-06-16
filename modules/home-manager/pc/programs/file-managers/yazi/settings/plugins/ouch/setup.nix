{
  flake.modules.homeManager.pc = {
    programs.yazi.plugins."ouch" = {
      setup = false;
    };
  };
}
