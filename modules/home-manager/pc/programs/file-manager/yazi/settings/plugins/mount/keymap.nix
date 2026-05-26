{
  flake.modules.homeManager.pc = {
    programs.yazi.keymap.mgr.prepend_keymap = [
      { on = [ "M" ]; run = "plugin mount"; }
    ];
  };
}
