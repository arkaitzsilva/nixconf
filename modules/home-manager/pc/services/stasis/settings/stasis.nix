{
  flake.modules.homeManager.pc = { lib, config, ... }: lib.mkIf config.services.stasis.enable {
    xdg.configFile."stasis/stasis.rune".text = ''
      gather "metadata.rune"
    '';
  };
}
