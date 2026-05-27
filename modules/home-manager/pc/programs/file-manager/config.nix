{
  flake.modules.homeManager.pc = { lib, config, ... }: {
    file-manager = {
      name = "yazi";
      path = lib.getExe config.programs.yazi.package;
      open-cmd = "${config.terminal.path} --app-id ${config.file-manager.name} -- ${config.file-manager.path}";
    };
  };
}
