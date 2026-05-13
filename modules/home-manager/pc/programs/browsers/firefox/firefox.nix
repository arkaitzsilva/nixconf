{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.firefox.enable = config.gtk.enable;
  };
}
