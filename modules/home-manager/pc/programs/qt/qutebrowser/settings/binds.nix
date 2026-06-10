{
  flake.modules.homeManager.pc = {
    programs.qutebrowser.keyBindings = {
      normal = {
        "M" = "spawn --userscript export-cookies ;; hint links spawn mpv --ytdl-raw-options=cookies=\${XDG_RUNTIME_DIR}/cookies.txt {hint-url}";
      };
    };
  };
}
