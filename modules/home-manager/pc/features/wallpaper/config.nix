{
  flake.modules.homeManager.pc = { config, ... }: {
    wallpaper = {
      path = "${config.xdg.dataHome}/backgrounds";
      name = "static_cell.png";
    };
  };
}
