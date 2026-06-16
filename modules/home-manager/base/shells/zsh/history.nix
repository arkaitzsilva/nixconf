{
  flake.modules.homeManager.base = { config, ... }: {
    programs.zsh = {
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
