{
  flake.modules.homeManager.base = { config, ... }: {
    programs.zsh = {
      dotDir = "${config.xdg.configHome}/zsh";
      enableCompletion = true;
      syntaxHighlighting.enable = true;
      autosuggestion.enable = true;
    };
  };
}
