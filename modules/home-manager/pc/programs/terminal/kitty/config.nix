{
  flake.modules.homeManager.pc = { lib, config, ...}: lib.mkIf config.programs.kitty.enable {
    terminal = {
      name = "kitty";
      path = lib.getExe config.programs.kitty.package;
    };
  };
}
