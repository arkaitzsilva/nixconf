{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.fzf = {
      enableZshIntegration = config.programs.zsh.enable;
      enableFishIntegration = config.programs.fish.enable;
    };
  };
}
