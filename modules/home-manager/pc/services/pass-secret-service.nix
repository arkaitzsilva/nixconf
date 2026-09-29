{
  flake.modules.homeManager.pc = { config, ... }: {
    services.pass-secret-service.enable = config.programs.password-store.enable;
  };
}
