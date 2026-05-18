{ config, ... }: {
  flake.modules.homeManager.pc = hmArgs: hmArgs.lib.mkIf hmArgs.config.services.stasis.enable {
    xdg.configFile."stasis/metadata.rune".text = ''
      @author "${config.flake.meta.owner.username}"
      @description "Stasis configuration"
    '';
  };
}
