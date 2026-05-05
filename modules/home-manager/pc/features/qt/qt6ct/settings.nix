{
  flake.modules.homeManager.pc = { config , ... }: {
    qt.qt6ctSettings = {
      Appearance = {
        style = "${config.qt.style.name}";
        standard_dialogs = "xdgdesktopportal";
      };

      Fonts = {
        general = "\"Noto Sans,10\"";
        fixed = "\"Noto Mono,10\"";
      };
    };
  };
}
