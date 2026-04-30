{
  flake.modules.homeManager.base = { config, ... }: {
    programs.zsh = {
      enable = true;
      dotDir = "${config.xdg.configHome}/zsh";
    };
  };
}
