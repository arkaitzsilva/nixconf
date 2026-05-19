{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.calibre.enable = config.qt.enable;
  };
}
