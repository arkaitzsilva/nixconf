{ withSystem, ... }: {
  flake.modules.nixos.pc = { pkgs, ... }:
    let
      niri = withSystem pkgs.stdenv.hostPlatform.system ( { inputs', ... }: inputs'.niri.packages.default );
    in {
      environment.systemPackages = [ niri ]; # Install Niri official package.

      services = {
        displayManager.sessionPackages = [ niri ]; # Add Niri to display manager session.
      };

      systemd.packages = [ niri ];
    };
}
