{ inputs, ... }: {
  nixpkgs.overlays = [
    inputs.self.overlays.flatpak
  ];
}
