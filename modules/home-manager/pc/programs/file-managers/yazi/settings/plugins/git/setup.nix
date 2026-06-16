{
  flake.modules.homeManager.pc = {
    programs.yazi.plugins."git" = {
      setup = true;
      settings = {
        order = 1500;
      };
    };
  };
}
