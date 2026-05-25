{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.zoxide = {
      enableFishIntegration = config.programs.fish.enable;
    };
  };
}
