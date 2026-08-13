{
  flake.modules.homeManager.pc = { config, lib, osConfig, ... }: lib.mkIf config.qt.enable {
    qt.qt6ctSettings = {
      Appearance = {
        style = config.qt.style.name;
        standard_dialogs = "xdgdesktopportal";
        icon_theme = config.style.icon-theme.name;
      };

      Fonts = {
        general = "\"${builtins.head osConfig.fonts.fontconfig.defaultFonts.sansSerif},10\"";
        fixed = "\"${builtins.head osConfig.fonts.fontconfig.defaultFonts.monospace},10\"";
      };
    };
  };
}
