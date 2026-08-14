{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.qutebrowser.settings = {
      fonts = with config.style.fonts; {
        default_family = sansSerif.name;
        default_size = "${toString sizes.applications}pt";
        web = {
          family = {
            cursive = serif.name;
            fantasy = serif.name;
            fixed = monospace.name;
            sans_serif = sansSerif.name;
            serif = serif.name;
            standard = sansSerif.name;
          };
        };
      };
    };
  };
}
