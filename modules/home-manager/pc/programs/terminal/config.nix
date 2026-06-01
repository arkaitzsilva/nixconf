{
  flake.modules.homeManager.pc = { lib, config, ...}: {
    terminal = {
      name = "kitty";
      font-family = "CaskaydiaCove Nerd Font";
      font-size = 11;
      start-cmd = "${lib.getExe config.programs.kitty.package} -1";
    };
  };
}
