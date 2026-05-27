{
  flake.modules.homeManager.base = {
    programs.zsh = {
      shellAliases = {
        c = "clear";
      };
    };
  };
}
