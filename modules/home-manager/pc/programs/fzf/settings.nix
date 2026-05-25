{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.fzf = {
      enableFishIntegration = config.programs.fish.enable;
    };
  };
}
