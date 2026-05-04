{
  flake.modules.homeManager.pc = { config, ...}: {
    xdg.configFile."Kvantum/kvantum.kvconfig".text = ''
      [General]
      theme=base16
    '';

    xdg.configFile."Kvantum/base16/base16.kvconfig".source =
      config.scheme {
        template = builtins.readFile ./templates/kvantum.kvconfig.mustache;
        extension = ".kvconfig";
      };

    xdg.configFile."Kvantum/base16/base16.svg".source =
      config.scheme {
        template = builtins.readFile ./templates/kvantum.svg.mustache;
        extension = ".svg";
      };
  };
}
