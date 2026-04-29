{ lib, ... }: {
  flake.modules.homeManager.pc = hmArgs: {
    terminal = {
      name = "foot";
      path = lib.getExe hmArgs.config.programs.foot.package;
    };
  };
}
