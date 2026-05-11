{
  flake.modules.homeManager.base = { config, ... }: {
    xdg.userDirs = {
      enable = true;
      createDirectories = true;
      setSessionVariables = true;
      documents = "${config.home.homeDirectory}/${config.xdg.userDirs.names.documents}";
      download = "${config.home.homeDirectory}/${config.xdg.userDirs.names.download}";
      pictures = "${config.home.homeDirectory}/${config.xdg.userDirs.names.pictures}";
      videos = "${config.home.homeDirectory}/${config.xdg.userDirs.names.videos}";
      desktop = "${config.home.homeDirectory}/${config.xdg.userDirs.names.desktop}";
      music = "${config.home.homeDirectory}/${config.xdg.userDirs.names.music}";
      templates = "${config.home.homeDirectory}/${config.xdg.userDirs.names.templates}";
      publicShare = "${config.home.homeDirectory}/${config.xdg.userDirs.names.publicShare}";
      extraConfig = {
        PROJECTS = "${config.home.homeDirectory}/Projects";
        TORRENT = "${config.home.homeDirectory}/Torrent";
      };
    };
  };
}
