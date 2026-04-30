{
  flake.modules.homeManager.pc = { config , ... }: {
    qt.qt6ctSettings = {
      Appearance = {
        style = "${config.qt.style.name}";
        standard_dialogs = "xdgdesktopportal";
      };
    };
  };
}
