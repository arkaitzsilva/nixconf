{
  flake.modules.homeManager.pc = { lib, config, pkgs, ... }: lib.mkIf config.programs.qutebrowser.enable {
    home.packages = [
      pkgs.sqlite
    ];

    home.file."${config.xdg.configHome}/qutebrowser/userscripts/export-cookies" = {
      executable = true;
      text = ''
        #!/bin/sh
        {
            echo '# Netscape HTTP Cookie File'
            sqlite3 -separator '	' "file:''${XDG_DATA_HOME:-$HOME/.local/share}/qutebrowser/webengine/Cookies?nolock=1" "
        SELECT
            host_key,
            IIF(host_key LIKE '.%', 'TRUE', 'FALSE'),
            path,
            IIF(is_secure, 'TRUE', 'FALSE'),
            IIF(expires_utc == 0, 0, expires_utc / 1000000 - 11644473600),
            name,
            value
        FROM cookies;"
        } > "$XDG_RUNTIME_DIR/cookies.txt"
      '';
    };
  };
}
