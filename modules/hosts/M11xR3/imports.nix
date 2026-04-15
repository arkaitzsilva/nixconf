# Uses the option in `../configurations/nixos.nix` to declare a NixOS configuration
{ config, ... }:
let
  inherit (config.flake.modules) nixos;
in {
  configurations.nixos.M11xR3.module = {
    imports = [
      nixos.mbr
      nixos.base
      nixos.swap
      nixos.plasma6 # Desktop
    ];
  };
}
