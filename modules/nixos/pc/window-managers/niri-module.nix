{ withSystem, ... }: {
  flake.modules.nixos.pc = { lib, config, pkgs, ... }:
    let
      niri = withSystem pkgs.stdenv.hostPlatform.system ( { inputs', ... }: inputs'.niri.packages.default );
      cfg = config.programs.niri;
    in {
      # Disable NixOS module
      disabledModules = [
        "programs/wayland/niri.nix"
      ];

      options.programs.niri = {
        enable = lib.mkEnableOption "Niri";
      };

      # Minimal Niri NixOS module
      config = lib.mkIf cfg.enable {
        environment.systemPackages = [ niri ]; # Install Niri official package.

        services = {
          displayManager.sessionPackages = [ niri ]; # Add Niri to display manager session.
        };

        systemd.packages = [ niri ];
      };
    };
}
