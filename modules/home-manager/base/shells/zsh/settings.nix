{
  flake.modules.homeManager.base = { config, ... }: {
    programs.zsh = {
      dotDir = "${config.xdg.configHome}/zsh";
      shellAliases = {
        cls = "clear";
        crfs = "cryfs ~/.vault ~/Vault";
      };
      enableCompletion = true;
      syntaxHighlighting.enable = true;
      autosuggestion.enable = true;

      history = {
        size = 100000;
        path = "${config.xdg.dataHome}/zsh/history";
        save = 100000;
        ignoreDups = true;
        ignoreAllDups = true;
        append = true;
        share = true;
        ignoreSpace = true;
        saveNoDups = true;
      };
    };
  };
}
