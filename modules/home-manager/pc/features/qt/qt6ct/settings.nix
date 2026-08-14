{
  flake.modules.homeManager.pc = { config, lib, ... }: lib.mkIf config.qt.enable {
    qt.qt6ctSettings = {
      Appearance = {
        style = config.qt.style.name;
        standard_dialogs = "xdgdesktopportal";
        icon_theme = config.style.icon-theme.name;
      };

      Fonts = {
        general = "\"${config.style.fonts.sansSerif.name},${toString config.style.fonts.sizes.applications}\"";
        fixed = "\"${config.style.fonts.monospace.name},${toString config.style.fonts.sizes.terminal}\"";
      };
    };
  };
}
