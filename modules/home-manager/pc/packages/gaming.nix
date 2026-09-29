{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    home.packages = with pkgs; [
      gopher64
      dolphin-emu
    ];
  };
}
