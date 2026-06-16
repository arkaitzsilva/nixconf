{
  flake.modules.homeManager.pc = { config, pkgs, lib, ... }: lib.mkIf config.gtk.enable {
    home.packages = with pkgs; [
      amule
      gimp
      inkscape
      deluge-gtk
      tor-browser
    ];
  };
}
