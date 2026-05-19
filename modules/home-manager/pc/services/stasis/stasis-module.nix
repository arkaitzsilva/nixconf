{
  flake.modules.homeManager.pc = { lib, config, pkgs, ... }:
    let
      cfg = config.services.stasis;

      dpms-off = pkgs.writeShellScriptBin "dpms-off" ''
        case "$XDG_CURRENT_DESKTOP" in
          Hyprland) hyprctl dispatch dpms off ;;
          niri) niri msg action power-off-monitors ;;
        esac
      '';

      dpms-on = pkgs.writeShellScriptBin "dpms-on" ''
        case "$XDG_CURRENT_DESKTOP" in
          Hyprland) hyprctl dispatch dpms on ;;
          niri) niri msg action power-on-monitors ;;
        esac
      '';
    in {
      options.services.stasis = {
        enable = lib.mkEnableOption "Stasis";
      };

      config = lib.mkIf cfg.enable {
        home.packages = with pkgs; [
          stasis
          brightnessctl
          
          dpms-off
          dpms-on
        ];

        systemd.user.services.stasis = {
          Unit = {
            Description = "Stasis Wayland Idle Manager";
            PartOf = "graphical-session.target";
            After = "graphical-session.target";
            ConditionEnvironment = "WAYLAND_DISPLAY";
          };

          Service = {
            Type = "simple";
            ExecStart = "${pkgs.stasis}/bin/stasis";
            Restart = "on-failure";
          };

          Install = {
            WantedBy = [ "graphical-session.target" ];
          };
        };
      };
    };
}
