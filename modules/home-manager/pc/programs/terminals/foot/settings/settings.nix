{
  flake.modules.homeManager.pc = { config, osConfig, ... }: {
    programs.foot = {
      settings = {
        main = {
          gamma-correct-blending = "no";
          font = "${builtins.head osConfig.fonts.fontconfig.defaultFonts.monospace}:size=${toString config.terminal.font-size}";
          letter-spacing = 0;
          dpi-aware = "no";
          pad = "10x10";
        };
        scrollback = {
          indicator-format = "line";
        };
        cursor = {
          blink = "no";
        };
        key-bindings = {
          scrollback-up-page= "Page_Up";
          scrollback-down-page = "Page_Down";
        };
      };
    };
  };
}
