# Uses the option in `../configurations/nixos.nix` to declare a NixOS configuration
{ config, ... }:
let
  inherit (config.flake.modules) nixos;
in {
  configurations.nixos.AW13.module = {
    imports = [
      nixos.efi
      nixos.base
      nixos.swap
      nixos.plasma6 # Desktop
    ];
  };
}
