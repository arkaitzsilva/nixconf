{ inputs, ... }: { 
  nixpkgs.overlays = with inputs.self.overlays; [
    qtbase
    flatpak
    xdg-desktop-portal
  ];
}
