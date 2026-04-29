{
  flake.modules.homeManager.pc = hmArgs: {
    wayland.windowManager.hyprland.settings = {
      bind = [
        "SUPER, Return, exec, ${hmArgs.config.terminal.path}"
        "SUPER, E, exec, ${hmArgs.config.file-manager.open-cmd}"

        "SUPER+SHIFT, E, exit"

        "SUPER, Q, killactive"

        "SUPER, S, togglefloating"

        "SUPER, left, movefocus, l"
        "SUPER, right, movefocus, r"
        "SUPER, up, movefocus, u"
        "SUPER, down, movefocus, d"

        "SUPER+ALT, left, movewindow, l"
        "SUPER+ALT, right, movewindow, r"
        "SUPER+ALT, up, movewindow, u"
        "SUPER+ALT, down, movewindow, d"

        "SUPER, next, workspace, +1"
        "SUPER, prior, workspace, -1"

        "SUPER+ALT, next, movetoworkspace, +1"
        "SUPER+ALT, prior, movetoworkspace, -1"

        ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        ",XF86AudioPlay, exec, playerctl play-pause"
        ",XF86AudioPrev, exec, playerctl previous"
        ",XF86AudioNext, exec, playerctl next"

        ",XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%+"
        ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"

        ",XF86MonBrightnessUp, exec, brightnessctl set 20%+"
        ",XF86MonBrightnessDown, exec, brightnessctl set 20%-"        
      ];
    };   
  };
}
