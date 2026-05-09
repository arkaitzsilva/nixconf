{
  flake.modules.homeManager.base = { config, ... }: {
    xdg.userDirs = {
      enable = true;
      createDirectories = true;
      setSessionVariables = true;
      documents = "${config.home.homeDirectory}/Documents";
      download = "${config.home.homeDirectory}/Downloads";
      pictures = "${config.home.homeDirectory}/Pictures";
      videos = "${config.home.homeDirectory}/Videos";
      desktop = "${config.home.homeDirectory}/Desktop";
      music = "${config.home.homeDirectory}/Music";
      templates = "${config.home.homeDirectory}/Templates";
      publicShare = "${config.home.homeDirectory}/Public";
      extraConfig = {
        PROJECTS = "${config.home.homeDirectory}/Projects";
        TORRENT = "${config.home.homeDirectory}/Torrent";
      };
    };
  };
}
