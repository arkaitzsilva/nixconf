{
  flake.modules.homeManager.pc = {
    programs.firefox.profiles = {
      primary = {
        id = 0;
        settings."widget.gtk.libadwaita-colors.enabled" = false;
      };
    };
  };
}
