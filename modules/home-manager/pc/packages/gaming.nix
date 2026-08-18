{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    home.packages = with pkgs; [
      rmg-wayland
      dolphin-emu
    ];
  };
}
