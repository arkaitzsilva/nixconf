{
  flake.modules.homeManager.pc = { lib, config, ... }: {
    wayland.windowManager.hyprland.settings = with lib.generators; {
      mod = {
        _var = "SUPER";
      };

      bind = [
        # App launchers
        {
          _args = [
            (mkLuaInline "mod .. \" + E\"")
            (mkLuaInline "hl.dsp.exec_cmd(\"${config.file-manager.start-cmd}\")")
          ];
        }
        {
          _args = [
            (mkLuaInline "mod .. \" + Return\"")
            (mkLuaInline "hl.dsp.exec_cmd(\"${config.terminal.start-cmd}\")")
          ];
        }

        # Close session
        {
          _args = [
            (mkLuaInline "mod .. \" + SHIFT + E\"")
            (mkLuaInline "hl.dsp.exit()")
          ];
        }

        # Window actions
        {
          _args = [
            (mkLuaInline "mod .. \" + Q\"")
            (mkLuaInline "hl.dsp.window.close()")
          ];
        }
        {
          _args = [
            (mkLuaInline "mod .. \" + S\"")
            (mkLuaInline "hl.dsp.window.float({ action = \"toggle\" })")
          ];
        }

        # Move window
        {
          _args = [
            (mkLuaInline "mod .. \" + ALT + left\"")
            (mkLuaInline "hl.dsp.window.move({ direction = \"left\" })")
          ];
        }
        {
          _args = [
            (mkLuaInline "mod .. \" + ALT + right\"")
            (mkLuaInline "hl.dsp.window.move({ direction = \"right\" })")
          ];
        }
        {
          _args = [
            (mkLuaInline "mod .. \" + ALT + up\"")
            (mkLuaInline "hl.dsp.window.move({ direction = \"up\" })")
          ];
        }
        {
          _args = [
            (mkLuaInline "mod .. \" + ALT + down\"")
            (mkLuaInline "hl.dsp.window.move({ direction = \"down\" })")
          ];
        }

        # Focus window
        {
          _args = [
            (mkLuaInline "mod .. \" + left\"")
            (mkLuaInline "hl.dsp.focus({ direction = \"left\" })")
          ];
        }
        {
          _args = [
            (mkLuaInline "mod .. \" + right\"")
            (mkLuaInline "hl.dsp.focus({ direction = \"right\" })")
          ];
        }
        {
          _args = [
            (mkLuaInline "mod .. \" + up\"")
            (mkLuaInline "hl.dsp.focus({ direction = \"up\" })")
          ];
        }
        {
          _args = [
            (mkLuaInline "mod .. \" + down\"")
            (mkLuaInline "hl.dsp.focus({ direction = \"down\" })")
          ];
        }

        # Move window to workspace
        {
          _args = [
            (mkLuaInline "mod .. \" + ALT + next\"")
            (mkLuaInline "hl.dsp.window.move({ workspace = \"+1\" })")
          ];
        }
        {
          _args = [
            (mkLuaInline "mod .. \" + ALT + prior\"")
            (mkLuaInline "hl.dsp.window.move({ workspace = \"-1\" })")
          ];
        }

        # Focus workspace
        {
          _args = [
            (mkLuaInline "mod .. \" + next\"")
            (mkLuaInline "hl.dsp.focus({ workspace = \"+1\" })")
          ];
        }
        {
          _args = [
            (mkLuaInline "mod .. \" + prior\"")
            (mkLuaInline "hl.dsp.focus({ workspace = \"-1\" })")
          ];
        }

        # Multimedia
        {
          _args = [
            "XF86AudioMute"
            (mkLuaInline "hl.dsp.exec_cmd(\"wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle\")")
            { locked = true; }
          ];
        }
        {
          _args = [
            "XF86AudioLowerVolume"
            (mkLuaInline "hl.dsp.exec_cmd(\"wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-\")")
            { locked = true; repeating = true; }
          ];
        }
        {
          _args = [
            "XF86AudioRaiseVolume"
            (mkLuaInline "hl.dsp.exec_cmd(\"wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+\")")
            { locked = true; repeating = true; }
          ];
        }
        {
          _args = [
            "XF86AudioPlay"
            (mkLuaInline "hl.dsp.exec_cmd(\"playerctl play-pause\")")
            { locked = true; }
          ];
        }
        {
          _args = [
            "XF86AudioPrev"
            (mkLuaInline "hl.dsp.exec_cmd(\"playerctl previous\")")
            { locked = true; }
          ];
        }
        {
          _args = [
            "XF86AudioNext"
            (mkLuaInline "hl.dsp.exec_cmd(\"playerctl next\")")
            { locked = true; }
          ];
        }

        # Brightness
        {
          _args = [
            "XF86MonBrightnessUp"
            (mkLuaInline "hl.dsp.exec_cmd(\"brightnessctl set 20%+\")")
            { locked = true; repeating = true; }
          ];
        }
        {
          _args = [
            "XF86MonBrightnessDown"
            (mkLuaInline "hl.dsp.exec_cmd(\"brightnessctl set 20%-\")")
            { locked = true; repeating = true; }
          ];
        }
      ];
    };
  };
}
