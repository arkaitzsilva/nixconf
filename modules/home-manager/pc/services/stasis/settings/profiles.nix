{
  flake.modules.homeManager.pc = { lib, config, ... }: lib.mkIf config.services.stasis.enable {
    xdg.configFile."stasis/profiles.rune".text = ''
      gaming:
        mode "overlay"

        inhibit_apps [
          r".*\.exe"
          r"steam_app_.*"
          r".*\.x86_64"
        ]
      end

      work:
        mode "overlay"

        enable_loginctl true
        debounce_seconds 10
        monitor_media true
        ignore_remote_media true

        lock_screen:
          timeout 600
          command "hyprlock"
          resume_command "notify-send 'Welcome back, $env.USER!'"
        end

        dpms:
          timeout 300
          command "dpms-off"
          resume_command "dpms-on"
        end

        suspend:
          timeout 3600
          command "systemctl suspend"
        end
      end

      presentation:
        mode "fresh"

        pre_suspend_command None
        monitor_media false
        ignore_remote_media true
        debounce_seconds 0
        notify_on_unpause false
        notify_before_action false
        inhibit_apps [ ]

        lid_close_action ""
        lid_open_action ""

        brightness:
          timeout 0
          command "brightnessctl set 100%"
        end
      end
    '';
  };
}
