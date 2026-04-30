{
  flake.modules.homeManager.pc = { lib, osConfig, ... }: {
    services.flatpak = lib.mkIf osConfig.services.flatpak.enable {
      enable = true;
    };
  };
}
