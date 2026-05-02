{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    programs.helix.package = pkgs.helix-unwrapped;
  };
}
