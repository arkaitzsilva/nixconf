{
  flake.modules.homeManager.pc = {
    xdg.configFile."niri/animations.kdl".text = ''
      animations {
       workspace-switch {
          duration-ms 700
          curve "cubic-bezier" 0.1 1 0 1
        }

        window-open {
          duration-ms 320
          curve "cubic-bezier" 0.07 0.88 0.04 0.99
        }

        window-close {
          duration-ms 280
          curve "cubic-bezier" 0 0.48 0.38 1
        }

        window-movement {
          duration-ms 300
          curve "cubic-bezier" 0.05 0.85 0.03 0.97
        }

        horizontal-view-movement {
          duration-ms 500
          curve "cubic-bezier" 0.3 1.29 0.35 0.98
        }

        overview-open-close {
          duration-ms 400
          curve "cubic-bezier" 0.05 0.7 0.1 1
        }
      }
    '';
  };
}
