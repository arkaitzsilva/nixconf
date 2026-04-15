{ config, withSystem, ... }: let
  inherit (config.flake.modules) nixos;
in {
  flake.modules.nixos.hyprland = { pkgs, ... }: {
    imports = [
      nixos.flatpak
    ];

    services.displayManager.sessionPackages = [
      (withSystem pkgs.stdenv.hostPlatform.system (psArgs: psArgs.inputs'.hyprnix.packages.hyprland))
    ];

    programs.uwsm.enable = true;

    environment.systemPackages = [
      (withSystem pkgs.stdenv.hostPlatform.system (psArgs: psArgs.inputs'.hyprnix.packages.hyprland))
    ];
  };
}
