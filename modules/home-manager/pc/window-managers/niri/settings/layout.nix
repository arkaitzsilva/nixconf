{
  flake.modules.homeManager.pc = { config, ...}: {
    xdg.configFile."niri/layout.kdl".text = ''
      layout {
        background-color "${config.scheme.withHashtag.base00}"
        gaps 8
        center-focused-column "never"
        preset-column-widths {
          proportion 0.33333
          proportion 0.5
          proportion 0.66667
        }
        default-column-width { proportion 1.0; }
        focus-ring {
          off
        }
        border {
          on
          width 2
          active-gradient from="${config.scheme.withHashtag.base0C}" to="${config.scheme.withHashtag.base0A}" angle=45 in="oklch shorter hue"
          inactive-color "${config.scheme.withHashtag.base03}"
          urgent-color "${config.scheme.withHashtag.base08}"
        }
      }
    '';
  };
}
