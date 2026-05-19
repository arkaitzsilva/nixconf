{
  flake.modules.homeManager.pc = { lib, osConfig, pkgs, ... }: lib.mkIf osConfig.programs.hyprland.enable {
    home.packages = with pkgs; [
      xwayland
      brightnessctl
      playerctl
    ];
  };
}
