{
  flake.modules.homeManager.pc = { config, ... }: {
    wallpaper = {
      backend = "awww";
      start-cmd = "awww-daemon --format argb & awww img ${config.wallpaper.path}/${config.wallpaper.name}";
    };
  };
}
