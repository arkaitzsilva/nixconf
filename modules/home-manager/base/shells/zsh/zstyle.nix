{
  flake.modules.homeManager.base = {
    programs.zsh.initContent = ''
      zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
      zstyle ':completion:*' list-colors "''${(s.:.)LS_COLORS}"
      zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
      zstyle ':completion:*' menu no
      zstyle ":fzf-tab:*" use-fzf-default-opts yes
    '';
  };
}
