{
  flake.modules.homeManager.pc = { lib, config, ...}: {
    terminal = {
      name = "kitty";
      path = lib.getExe config.programs.kitty.package;
    };
  };
}
