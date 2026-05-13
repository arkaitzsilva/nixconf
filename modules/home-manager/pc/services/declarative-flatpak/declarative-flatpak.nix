{
  flake.modules.homeManager.pc = { osConfig, ... }: {
    services.flatpak = {
      enable = osConfig.services.flatpak.enable;
    };
  };
}
