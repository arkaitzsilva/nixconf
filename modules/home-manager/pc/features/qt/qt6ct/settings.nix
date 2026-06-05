{
  flake.modules.homeManager.pc = { config, lib, ... }: lib.mkIf config.qt.enable {
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
