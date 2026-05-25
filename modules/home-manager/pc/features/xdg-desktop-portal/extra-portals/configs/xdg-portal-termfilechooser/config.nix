{
  flake.modules.homeManager.pc = {
    xdg.termfilechooser.wrapper = "yazi-wrapper.sh";
    xdg.termfilechooser.term-cmd = "kitty --app-id xdg-desktop-portal-termfilechooser --title \"Terminal File Chooser\""; 
  };
}
