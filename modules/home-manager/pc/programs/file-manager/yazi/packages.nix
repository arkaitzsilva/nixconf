{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    home.packages = with pkgs; [
      file # Text files preview
    ];
  };
}
