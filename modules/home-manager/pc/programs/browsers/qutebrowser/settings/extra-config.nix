{
  flake.modules.homeManager.pc = {
    programs.qutebrowser = {
      extraConfig = ''
        config.set('statusbar.padding', {'top': 5, 'bottom': 5, 'left': 5, 'right': 5})
        config.set('tabs.padding', {'top': 5, 'bottom': 5, 'left': 5, 'right': 5})
      '';
    };
  };
}
