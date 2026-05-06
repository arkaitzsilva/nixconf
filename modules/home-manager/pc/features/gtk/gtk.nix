{
  flake.modules = {
    homeManager.pc = {
      gtk = {
        enable = true;
        gtk2.enable = false;
        gtk3.enable = true;
        gtk4.enable = false;
      };
    };
    nixos.pc = {
      programs.dconf.enable = true;
    };
  };
}
