# Overlays to be loaded.
{ inputs, ... }: { 
  nixpkgs.overlays = with inputs.self.overlays; [
    ly
    btop
  ];
}
