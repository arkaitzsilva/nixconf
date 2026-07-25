{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.noctalia.settings.theme = {
      source = "custom";
      custom_palette = config.scheme.slug;
    };
  };
}
