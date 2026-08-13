{
  flake.modules.homeManager.pc = { config, lib, ...}: lib.mkIf config.qt.enable {
    xdg.configFile."Kvantum/${config.scheme.slug}/${config.scheme.slug}.kvconfig".source =
      config.scheme {
        template = builtins.readFile ./templates/kvantum.kvconfig.mustache;
        extension = ".kvconfig";
      };

    xdg.configFile."Kvantum/${config.scheme.slug}/${config.scheme.slug}.svg".source =
      config.scheme {
        template = builtins.readFile ./templates/kvantum.svg.mustache;
        extension = ".svg";
      };
  };
}
