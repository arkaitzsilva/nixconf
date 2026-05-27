{
  flake.modules.homeManager.base = { config, ... }: {
    programs.oh-my-posh.enable = config.programs.zsh.enable;
  };
}
