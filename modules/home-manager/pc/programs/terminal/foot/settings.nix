{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.foot = {
      settings = {
        main = {
          gamma-correct-blending = "no";
          font = "FiraCode Nerd Font:size=11";
          letter-spacing = 0;
          dpi-aware = "no";
          pad = "10x10";
        };
        "colors-${config.scheme.variant}" = {
          cursor = "${config.scheme.base00} ${config.scheme.base04}";
          foreground = "${config.scheme.base05}";
          background = "${config.scheme.base00}";
          regular0 = "${config.scheme.base00}";
          regular1 = "${config.scheme.base08}";
          regular2 = "${config.scheme.base0B}";
          regular3 = "${config.scheme.base0A}";
          regular4 = "${config.scheme.base0D}";
          regular5 = "${config.scheme.base0E}";
          regular6 = "${config.scheme.base0C}";
          regular7 = "${config.scheme.base05}";
          bright0 = "${config.scheme.base02}";
          bright1 = "${config.scheme.base08}";
          bright2 = "${config.scheme.base0B}";
          bright3 = "${config.scheme.base0A}";
          bright4 = "${config.scheme.base0D}";
          bright5 = "${config.scheme.base0E}";
          bright6 = "${config.scheme.base0C}";
          bright7 = "${config.scheme.base07}";
        };
      };
    };
  };
}
