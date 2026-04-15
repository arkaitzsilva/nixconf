{ config, ... }: let
  inherit (config.flake.modules) nixos;
in {
  flake.modules.nixos.plasma6 = {
    imports = [
      nixos.flatpak
    ];

    services = {
      desktopManager.plasma6.enable = true;
      displayManager.plasma-login-manager = {
        enable = true;
      };
    };
  };
}
