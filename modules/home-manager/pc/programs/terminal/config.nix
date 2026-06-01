{
  flake.modules.homeManager.pc = { lib, config, ...}: {
    terminal = {
      name = "kitty";
      start-cmd = "${lib.getExe config.programs.kitty.package} -1";
    };
  };
}
