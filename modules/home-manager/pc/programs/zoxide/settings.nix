{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.zoxide.enableZshIntegration = config.programs.zsh.enable;
  };
}
