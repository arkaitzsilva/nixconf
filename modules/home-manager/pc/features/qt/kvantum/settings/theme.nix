{
  flake.modules.homeManager.pc = { config, ...}: {
    xdg.configFile."Kvantum/kvantum.kvconfig".text = ''
      [General]
      theme=${config.scheme.scheme-slug}
    '';

    xdg.configFile."Kvantum/${config.scheme.scheme-slug}/${config.scheme.scheme-slug}.kvconfig".source =
      config.scheme {
        template = builtins.readFile ./templates/kvantum.kvconfig.mustache;
        extension = ".kvconfig";
      };

    #xdg.configFile."Kvantum/${config.scheme.scheme-slug}/${config.scheme.scheme-slug}.svg".source =
    #  config.scheme {
    #    template = builtins.readFile ./templates/kvantum.svg.mustache;
    #    extension = ".svg";
    #  };
  };
}
