{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    gtk.gtk4.theme = {
      name = "adw-gtk3-dark";
      package = pkgs.adw-gtk3;
    };
  };
}
