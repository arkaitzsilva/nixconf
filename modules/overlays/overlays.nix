# Overlays to load.
{ inputs, ... }: { 
  nixpkgs.overlays = with inputs.self.overlays; [
    ly
    btop
  ];
}
