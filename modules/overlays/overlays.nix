# Overlays to be loaded.
{ inputs, ... }: { 
  nixpkgs.overlays = with inputs.self.overlays; [
    ly
    btop
    gst-plugins-bad
    # qtbase
    # flatpak
    # xdg-desktop-portal
    # xwayland
  ];
}
