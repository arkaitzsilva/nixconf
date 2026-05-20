{
  flake.modules.homeManager.pc = { lib, config, pkgs, ... }: lib.mkIf config.wayland.windowManager.hyprland.enable {
    home.packages = with pkgs; [
      xwayland
      brightnessctl
      playerctl
    ];
  };
}
