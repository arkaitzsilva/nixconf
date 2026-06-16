{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    programs.yazi.package = pkgs.yazi-unwrapped;
  };
}
