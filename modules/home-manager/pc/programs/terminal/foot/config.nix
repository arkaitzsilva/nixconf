{
  flake.modules.homeManager.pc = { lib, config, ...}: lib.mkIf config.programs.foot.enable {
    terminal = {
      name = "foot";
      path = lib.getExe config.programs.foot.package;
    };
  };
}
