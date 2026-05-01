{
  flake.modules.homeManager.base = { config, ... }: {
    programs.zsh = {
      dotDir = "${config.xdg.configHome}/zsh";
      shellAliases = {
        cls = "clear";
      };
      enableCompletion = true;
      syntaxHighlighting.enable = true;
    };
  };
}
