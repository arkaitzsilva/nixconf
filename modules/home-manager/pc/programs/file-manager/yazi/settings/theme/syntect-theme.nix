{
  flake.modules.homeManager.pc = { lib, config, ... }: lib.mkIf config.programs.yazi.enable {
    xdg.configFile."yazi/${config.scheme.slug}.tmTheme".source =
      config.scheme {
        template = builtins.readFile ./template/tmTheme.mustache;
        extension = ".tmTheme";
      };
  };
}
