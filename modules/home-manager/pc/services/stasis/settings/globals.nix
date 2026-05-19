{
  flake.modules.homeManager.pc = { lib, config, ... }: lib.mkIf config.services.stasis.enable {
    xdg.configFile."stasis/globals.rune".text = ''
      # Top-level: reusable values (recommended)
      lock_after        300
      screen_off_after  300
      suspend_after     1800
      debounce_seconds  4
      notify_seconds    5
    '';
  };
}
