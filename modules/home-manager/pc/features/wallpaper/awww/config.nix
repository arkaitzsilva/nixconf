{
  flake.modules.homeManager.pc = {
    wallpaper = {
      backend = "awww";
      start-cmd = "awww-daemon --format argb";
    };
  };
}
