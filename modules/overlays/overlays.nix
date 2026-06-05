# Overlays to be loaded.
{ inputs, ... }: { 
  nixpkgs.overlays = with inputs.self.overlays; [
    qtbase
    xdg-desktop-portal
    xwayland
    gst-plugins-bad
    ly
    btop
    qbittorrent
  ];
}
