{
  flake.modules.homeManager.base = { config, ... }: {
    programs.oh-my-posh = {
      enableZshIntegration = config.programs.zsh.enable;
    };
  };
}
