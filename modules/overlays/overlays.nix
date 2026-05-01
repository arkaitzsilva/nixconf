# Overlays to be loaded.
{ inputs, ... }: { 
  nixpkgs.overlays = with inputs.self.overlays; [
    qtbase
    ly
    flatpak
    xdg-desktop-portal
  ];
}
