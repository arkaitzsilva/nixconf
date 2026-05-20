{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    gtk.gtk3.theme = {
      package = pkgs.adw-gtk3;
      name = "adw-gtk3-dark";
    };
  };
}
