{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    programs.yazi = {
      enable = true;
      package = pkgs.yazi-unwrapped;
    };
  };
}
