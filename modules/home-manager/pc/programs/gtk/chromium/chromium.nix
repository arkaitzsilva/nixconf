{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.chromium.enable = config.gtk.enable;
  };
}
