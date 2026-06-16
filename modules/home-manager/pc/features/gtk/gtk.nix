{
  flake.modules = {
    homeManager.pc = {
      gtk.enable = true;
    };
    nixos.pc = {
      programs.dconf.enable = false;
    };
  };
}
