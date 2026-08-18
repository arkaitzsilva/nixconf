{
  flake.modules.homeManager.pc = { config, lib, ... }: lib.mkIf config.qt.enable {
    programs.brave.commandLineArgs = [
      "--ui-toolkit=qt"
    ];
  };
}
