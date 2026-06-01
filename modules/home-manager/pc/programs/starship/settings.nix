{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.starship = {
      enableFishIntegration = config.programs.fish.enable;
      enableTransience = true;
    };
  };
}
