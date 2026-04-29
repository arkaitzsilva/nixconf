{ withSystem, ... }: {
  flake.modules.nixos.pc = { pkgs, ... }:
    let
      hyprland = withSystem pkgs.stdenv.hostPlatform.system ( { inputs', ... }: inputs'.hyprnix.packages.hyprland );
    in {
      environment.systemPackages = [ hyprland ];

      programs.uwsm.enable = true;

      services = {
        displayManager.sessionPackages = [ hyprland ]; # Add Hyprland to display manager sessions.
      };
    };
}
