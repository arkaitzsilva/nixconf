{
  flake.modules.homeManager.pc = { config, pkgs, ... }: {
    gtk = {
      theme = {
        name = "adw-gtk3-dark";
        package = pkgs.adw-gtk3;
      };

      iconTheme = {
        name = config.style.icon-theme.name;
      };
    };
  };
}
