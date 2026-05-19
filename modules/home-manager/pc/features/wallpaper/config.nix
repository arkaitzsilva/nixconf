{
  flake.modules.homeManager.pc = { config, ... }: {
    wallpaper = {
      path = "${config.xdg.dataHome}/backgrounds";
      name = "animated_cell_2.gif";
    };
  };
}
