{
  flake.modules.homeManager.pc = {
    xdg.configFile."xdg-desktop-portal-termfilechooser/config".text = ''
      [filechooser]
      create_help_file=1
      cmd=yazi-wrapper.sh
      default_dir=$XDG_DOWNLOAD_DIR
      env=TERMCMD='foot --app-id xdg-desktop-portal-termfilechooser --title "Terminal File Chooser"'
      open_mode = suggested
      save_mode = default
    '';
  };
}
