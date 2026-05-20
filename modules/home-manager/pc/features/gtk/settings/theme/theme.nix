{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    gtk.theme = {
      name = "adw-gtk3-dark";
      package = pkgs.adw-gtk3;
    };
  };
}
