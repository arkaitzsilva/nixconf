{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    gtk.theme = {
      package = pkgs.adw-gtk3;
      name = "adw-gtk3-dark";
    };
  };
}
