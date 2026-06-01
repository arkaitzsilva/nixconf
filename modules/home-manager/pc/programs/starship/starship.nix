{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.starship.enable = config.programs.fish.enable;
  };
}
