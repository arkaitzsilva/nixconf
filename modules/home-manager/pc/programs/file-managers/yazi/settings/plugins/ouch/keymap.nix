{
  flake.modules.homeManager.pc = {
    programs.yazi.keymap.mgr.prepend_keymap = [
      { on = [ "C" ]; run = "plugin ouch"; desc = "Compress with ouch"; }
    ];
  };
}
