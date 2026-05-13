{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    home.packages = with pkgs; [
      cryfs
      cmatrix
    ];
  };
}
