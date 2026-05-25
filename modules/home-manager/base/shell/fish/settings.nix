{
  flake.modules.homeManager.base = {
    programs.fish = {
      generateCompletions = true;
      shellInit = "set fish_greeting";
    };
  };
}
