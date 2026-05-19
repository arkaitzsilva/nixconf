{
  flake.modules.homeManager.pc = {
    programs.qutebrowser.keyBindings = {
      normal = {
        "M" = "hint links spawn mpv {hint-url}";
      };
    };
  };
}
