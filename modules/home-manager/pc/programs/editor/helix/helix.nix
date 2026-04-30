{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    programs.helix = {
      enable = true;
      package = pkgs.helix-unwrapped;
    };
  };
}
