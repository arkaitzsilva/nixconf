{
  flake.modules.homeManager.base = {
    programs.fish = {
      generateCompletions = true;
      shellInit = ''
        function starship_transient_prompt_func
          starship module character
        end
        set fish_greeting
      '';
    };
  };
}
