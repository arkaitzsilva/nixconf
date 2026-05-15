{
  flake.modules.homeManager.base = {
    programs.zsh.initContent = ''
      zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
      zstyle ':completion:*' list-colors "''${(s.:.)LS_COLORS}"
    '';
  };
}
