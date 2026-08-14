{
  flake.modules.homeManager.pc = {
    programs.qutebrowser = {
      extraConfig = ''
        config.set('statusbar.padding', {'top':6, 'bottom': 6, 'left': 6, 'right': 6})
        config.set('tabs.padding', {'top': 8, 'bottom': 8, 'left': 8, 'right': 8})
      '';
    };
  };
}
