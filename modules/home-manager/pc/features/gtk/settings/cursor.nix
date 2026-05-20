{
  flake.modules.homeManager.pc = { config, ... }: {
    gtk = {
      cursorTheme = {
        name = config.style.cursor-theme.name;
        size = config.style.cursor-theme.size;
      };
    };
  };
}
