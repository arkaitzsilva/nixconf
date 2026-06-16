{
  flake.modules.homeManager.base = { osConfig, ... }: {
    programs.zsh.enable = osConfig.programs.zsh.enable;
  };
}
