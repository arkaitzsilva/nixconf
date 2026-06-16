{
  flake.modules.homeManager.pc = { config, ... }: {
    gtk.gtk4.theme = {
      name = config.gtk.theme.name;
      package = config.gtk.theme.package;
    };
  };
}
