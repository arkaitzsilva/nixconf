{
  flake.modules.homeManager.pc = { lib, config, osConfig, ...}: with config.scheme.withHashtag; lib.mkIf osConfig.programs.niri.enable {
    xdg.configFile."niri/layout.kdl".text = ''
      layout {
        background-color "${base00}"
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
          active-gradient from="${base0C}" to="${base0D}" angle=45 in="oklch shorter hue"
          inactive-color "${base03}"
          urgent-color "${base08}"
        }
      }
    '';
  };
}
