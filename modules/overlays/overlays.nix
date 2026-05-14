# Overlays to be loaded.
{ inputs, ... }: { 
  nixpkgs.overlays = with inputs.self.overlays; [
    ly
    btop
    qtbase
    xdg-desktop-portal
    gst-plugins-bad
    xwayland
    flatpak
    qbittorrent
  ];
}
