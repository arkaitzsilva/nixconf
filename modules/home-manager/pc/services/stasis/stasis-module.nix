{
  flake.modules.homeManager.pc = { lib, config, pkgs, ... }:
    let
      cfg = config.services.stasis;
    in {
      options.services.stasis = {
        enable = lib.mkEnableOption "Stasis";
      };

      config = lib.mkIf cfg.enable {
        home.packages = [ pkgs.stasis ];

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
