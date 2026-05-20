{
  flake.modules.homeManager.pc = { config, ... }: {
    wallpaper = {
      path = "${config.xdg.dataHome}/backgrounds";
      name = "static_weak_or_no_signal.png";
    };
  };
}
