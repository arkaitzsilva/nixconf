{
  flake.modules.homeManager.pc = { lib, config, ... }: {
    file-manager = {
      name = "yazi";
      path = lib.getExe config.programs.yazi.package;
      start-cmd = "${config.terminal.start-cmd} --app-id ${config.file-manager.name} -- ${config.file-manager.path}";
    };
  };
}
