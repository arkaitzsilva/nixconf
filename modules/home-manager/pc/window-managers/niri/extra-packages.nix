{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    home.packages = with pkgs; [
      xwayland-satellite
      brightnessctl
      playerctl
    ];
  };
}
