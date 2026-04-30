{
  flake.modules.homeManager.base = {osConfig, ... }: {
    programs.oh-my-posh = {
      enableZshIntegration = osConfig.programs.zsh.enable;
    };
  };
}
