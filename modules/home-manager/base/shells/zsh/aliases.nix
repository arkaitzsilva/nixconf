{
  flake.modules.homeManager.base = {
    programs.zsh = {
      shellAliases = {
        ls = "ls --color";
        cls = "clear";
      };
    };
  };
}
