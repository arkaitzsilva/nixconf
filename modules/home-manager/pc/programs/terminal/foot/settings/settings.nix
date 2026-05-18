{
  flake.modules.homeManager.pc = {
    programs.foot = {
      settings = {
        main = {
          gamma-correct-blending = "no";
          font = "FiraCode Nerd Font:size=11";
          letter-spacing = 0;
          dpi-aware = "no";
          pad = "10x10";
        };
        scrollback = {
          indicator-format = "line";
        };
        cursor = {
          blink = "yes";
        };
        key-bindings = {
          scrollback-up-page= "Page_Up";
          scrollback-down-page = "Page_Down";
        };
      };
    };
  };
}
