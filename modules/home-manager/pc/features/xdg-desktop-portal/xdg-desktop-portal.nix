{ lib, ... }: {
  flake.modules = {
    homeManager.pc = {
      xdg.portal.enable = lib.mkForce true;
    };
    nixos.pc = {
      environment.pathsToLink = [ "/share/applications" "/share/xdg-desktop-portal" ];
    };
  };
}
