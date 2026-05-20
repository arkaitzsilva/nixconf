{ withSystem, ... }: {
  flake.modules.nixos.pc = { lib, config, pkgs, ... }:
    let
      hyprland = withSystem pkgs.stdenv.hostPlatform.system ( { inputs', ... }: inputs'.hyprnix.packages.hyprland );
      cfg = config.programs.hyprland;
    in {
      # Disable NixOS module
      disabledModules = [
        "programs/wayland/hyprland.nix"
      ];

      options.programs.hyprland = {
        enable = lib.mkEnableOption "Hyprland";
      };

      # Minimal Hyprland NixOS module
      config = lib.mkIf cfg.enable {
        environment.systemPackages = [ hyprland ];

        programs.uwsm.enable = true;

        services = {
          displayManager.sessionPackages = [ hyprland ]; # Add Hyprland to display manager sessions.
        };
      };
    };
}
