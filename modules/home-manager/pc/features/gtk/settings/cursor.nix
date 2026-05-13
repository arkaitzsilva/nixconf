{
  flake.modules.homeManager.pc = { config, ... }: {
    gtk = {
      cursorTheme = {
        name = config.cursor.theme.name;
        size = config.cursor.theme.size;
      };
    };
  };
}
