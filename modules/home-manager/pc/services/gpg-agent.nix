{
  flake.modules.homeManager.pc = { config, pkgs, ... }: {
    services.gpg-agent = {
      enable = config.programs.gpg.enable;
      pinentry.package = pkgs.pinentry-curses;
    };
  };
}
