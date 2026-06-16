{
  flake.modules.homeManager.pc = {
    programs.yazi.settings.plugin.prepend_fetchers = [
      { url = "*"; run = "git"; group = "git"; }
      { url = "*/"; run = "git"; group = "git"; }
    ];
  };
}
