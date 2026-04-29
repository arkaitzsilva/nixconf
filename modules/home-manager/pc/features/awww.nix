{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    home.packages = [ pkgs.awww ];
  };
}
