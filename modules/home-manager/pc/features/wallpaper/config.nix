{
  flake.modules.homeManager.pc = { config, ... }: {
    wallpaper = {
      # General configs
      path = "${config.xdg.dataHome}/backgrounds";
      name = "static_cell.png";
      # Backend configs
      backend = "awww";
      start-cmd = "awww-daemon --format argb & awww img ${config.wallpaper.path}/${config.wallpaper.name}";
    };
  };
}
