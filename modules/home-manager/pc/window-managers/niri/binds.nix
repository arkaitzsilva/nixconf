{
  flake.modules.homeManager.pc = hmArgs: {
    xdg.configFile."niri/binds.kdl".text = ''
      binds {
        Mod+Return hotkey-overlay-title="Open a Terminal: ${hmArgs.config.terminal.name}" { spawn "${hmArgs.config.terminal.path}"; }
        Mod+E hotkey-overlay-title="Open a file manager: ${hmArgs.config.file-manager.name}" { spawn-sh "${hmArgs.config.file-manager.open-cmd}"; }

        XF86AudioRaiseVolume allow-when-locked=true { spawn-sh "wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.1+"; }
        XF86AudioLowerVolume allow-when-locked=true { spawn-sh "wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.1-"; }
        XF86AudioMute        allow-when-locked=true { spawn-sh "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"; }
        XF86AudioMicMute     allow-when-locked=true { spawn-sh "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"; }

        XF86AudioPlay        allow-when-locked=true { spawn-sh "playerctl play-pause"; }
        XF86AudioStop        allow-when-locked=true { spawn-sh "playerctl stop"; }
        XF86AudioPrev        allow-when-locked=true { spawn-sh "playerctl previous"; }
        XF86AudioNext        allow-when-locked=true { spawn-sh "playerctl next"; }

        XF86MonBrightnessUp allow-when-locked=true { spawn "brightnessctl" "--class=backlight" "set" "+10%"; }
        XF86MonBrightnessDown allow-when-locked=true { spawn "brightnessctl" "--class=backlight" "set" "10%-"; }

        Mod+O repeat=false { toggle-overview; }
        Mod+Q repeat=false { close-window; }
        
        Mod+Left  { focus-column-left; }
        Mod+Down  { focus-window-down; }
        Mod+Up    { focus-window-up; }
        Mod+Right { focus-column-right; }
        Mod+H     { focus-column-left; }
        Mod+J     { focus-window-down; }
        Mod+K     { focus-window-up; }
        Mod+L     { focus-column-right; }

        Mod+Alt+Left  { move-column-left; }
        Mod+Alt+Down  { move-window-down; }
        Mod+Alt+Up    { move-window-up; }
        Mod+Alt+Right { move-column-right; }

        Print { screenshot; }
        Ctrl+Print { screenshot-screen; }
        Alt+Print { screenshot-window; }
      }
    '';
  };
}
