{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    programs.brave.package = pkgs.brave-origin;
  };
}
