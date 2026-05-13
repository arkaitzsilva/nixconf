{
  flake.modules.homeManager.pc = { config, lib, osConfig, ... }: lib.mkIf osConfig.xdg.portal.enable {
    xdg.configFile."xdg-desktop-portal-termfilechooser/config".text = ''
      [filechooser]
      create_help_file=1
      cmd=${config.xdg.termfilechooser.wrapper}
      default_dir=$XDG_DOWNLOAD_DIR
      env=TERMCMD='${config.xdg.termfilechooser.term-cmd}'
      open_mode = suggested
      save_mode = default
    '';
  };
}
