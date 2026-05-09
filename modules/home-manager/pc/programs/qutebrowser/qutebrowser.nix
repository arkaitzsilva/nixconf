{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.qutebrowser.enable = config.qt.enable;
  };
}
