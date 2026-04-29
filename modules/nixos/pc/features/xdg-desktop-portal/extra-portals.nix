{
  flake.modules.nixos.pc = { pkgs, ... }: {
    xdg.portal.extraPortals = with pkgs; [
      xdg-desktop-portal-luminous
      xdg-desktop-portal-termfilechooser
    ];
  };
}
