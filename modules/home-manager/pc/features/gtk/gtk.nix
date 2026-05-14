{
  flake.modules = {
    homeManager.pc = {
      gtk = {
        enable = false;
      };
    };
    nixos.pc = {
      programs.dconf.enable = false;
    };
  };
}
