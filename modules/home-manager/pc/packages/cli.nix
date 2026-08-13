{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    home.packages = with pkgs; [
      gocryptfs
      fuse3
      cmatrix
      pstree
      asciiquarium
      gifsicle
      tree
    ];
  };
}
