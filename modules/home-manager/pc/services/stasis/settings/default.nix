{
  flake.modules.homeManager.pc = { lib, config, ... }: lib.mkIf config.services.stasis.enable {
    xdg.configFile."stasis/default.rune".text = ''
      default:
        enable_loginctl false
        enable_dbus_inhibit true
        pre_suspend_command None
        monitor_media true
        ignore_remote_media true

        debounce_seconds debounce_seconds

        lid_close_action "hyprlock"

        notify_on_unpause true
        notify_before_action true

        inhibit_apps [
          "mpv"
        ]

        # ----------------------------------------------------------------
        # DESKTOP PLAN (used only on desktop chassis)
        # ----------------------------------------------------------------
        startup:
          timeout 0
          command "notify-send -a Stasis 'Stasis started!'"
        end

        early_dpms:
          timeout 300
          command "hyprctl dispatch dpms off"
          resume_command "hyprctl dispatch dpms on"
        end

        lock_screen:
          timeout lock_after
          command "hyprlock"
          resume_command "notify-send 'Welcome back $env.USER!'"
          notification "Locking session in 10s"
          notify_seconds_before 10
        end

        dpms:
          timeout screen_off_after
          command "hyprctl dispatch dpms off"
          resume_command "hyprctl dispatch dpms on"
        end

        suspend:
          timeout suspend_after
          command "systemctl suspend"
        end

        # ----------------------------------------------------------------
        # LAPTOP PLANS (used only on laptop chassis — ac: or battery:)
        # ----------------------------------------------------------------
        ac:
          custom_brightness_instant:
            timeout 0
            command "brightnessctl set 100%"
          end

          brightness:
            timeout 120
            command "brightnessctl set 30%"
          end

          dpms:
            timeout 60
            command "hyprctl dispatch dpms off"
            resume_command "hyprctl dispatch dpms on"
          end

          lock_screen:
            timeout 120
            command "hyprlock"
            notification "Locking on AC in 10s"
            notify_seconds_before 10
          end

          suspend:
            timeout 300
            command "systemctl suspend"
          end
        end

        battery:
          custom_brightness_instant:
            timeout 0
            command "brightnessctl set 40%"
          end

          brightness:
            timeout 60
            command "brightnessctl set 20%"
          end

          dpms:
            timeout 30
            command "hyprctl dispatch dpms off"
            resume_command "hyprctl dispatch dpms on"
          end

          lock_screen:
            timeout 120
            command "hyprlock"
            resume_command "notify-send 'Welcome back $env.USER!'"
          end

          suspend:
            timeout 120
            command "systemctl suspend"
          end
        end
      end
    '';
  };
}
