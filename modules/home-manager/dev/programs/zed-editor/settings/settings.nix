{
  flake.modules.homeManager.dev = { config, ... }: {
    programs.zed-editor.userSettings = {
      window_decorations = "server";
      buffer_font_family = config.style.fonts.monospace.name;
      # Zed expects pixels. Its buffer font is absolute, so convert points directly.
      buffer_font_size = config.style.fonts.toPx config.style.fonts.sizes.terminal;
      ui_font_family = config.style.fonts.sansSerif.name;
      # Zed's ui_font_size is the rem baseline (1rem), but its default-size text is
      # 0.875rem (14px at the 16px design reference), so scale by 0.875 to match
      # the point size.
      ui_font_size = (config.style.fonts.toPx config.style.fonts.sizes.applications) / 0.875;
      project_panel = {
        dock = "left";
        folder_icons = false;
        indent_guides.show = "always";
      };
    };
  };
}
