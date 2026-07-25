{
  flake.modules.homeManager.pc = { config, ... }: {
    services.gnome-keyring.enable = config.gtk.enable;
  };
}
