{
  flake.modules.homeManager.pc = { lib, osConfig, pkgs, ... }: lib.mkIf osConfig.programs.niri.enable {
    home.packages = with pkgs; [
      xwayland-satellite
      brightnessctl
      playerctl
    ];
  };
}
