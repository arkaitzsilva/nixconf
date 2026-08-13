{
  flake.modules.homeManager.dev = {
    programs.zed-editor.userSettings = {
      window_decorations = "server";
      project_panel = {
        dock = "left";
        folder_icons = false;
        indent_guides.show = "always";
      };
    };
  };
}
