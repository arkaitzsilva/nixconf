{ lib, ... }: {
  flake.modules.homeManager.pc = hmArgs: {
    file-manager = {
      name = "yazi";
      path = lib.getExe hmArgs.config.programs.yazi.package;
      open-cmd = "${hmArgs.config.terminal.path} --app-id ${hmArgs.config.file-manager.name} -- ${hmArgs.config.file-manager.path}";
    };
  };
}
