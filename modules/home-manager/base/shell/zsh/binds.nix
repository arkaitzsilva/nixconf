{
  flake.modules.homeManager.base = {
    programs.zsh.initContent = ''
      bindkey '^p' history-search-backward
      bindkey '^n' history-search-forward
    '';
  };
}
