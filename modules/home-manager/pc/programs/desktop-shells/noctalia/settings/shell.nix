{
  flake.modules.homeManager.pc = {
    programs.noctalia.settings.shell = {
      ui_scale = 1.0;
      font_family = "Noto Sans";
      lang = "en";
      time_format = "{:%_H:%M}";
      date_format = "%A, %x";
      offline_mode = false;
      telemetry_enabled = false;
      setup_wizard_enabled = false;
      niri_overview_type_to_launch_enabled = false;
      polkit_agent = true;
      password_style = "default";
      avatar_path = "~/.avatar";
      settings_show_advanced = true;
      middle_click_opens_widget_settings = false;
      show_location = false;
      app_icon_colorize = false;
      app_icon_color = "on_surface";
      clipboard_enabled = true;
      clipboard_history_max_entries = 100;
      clipboard_confirm_clear_history = true;
      clipboard_auto_paste = "auto";
      clipboard_image_action_command = "";
      shared_gl_context = true;

      animation = {
        enabled = true;
        speed = 1.0;
      };

      shadow = {
        direction = "center";
        alpha = 0.55;
      };
      
      panel = {
        transparency_mode = "solid";
        borders = true;
        shadow = false;
      };

      screen_corners = {
        enabled = false;
        size = 32;
      };

      screenshot =  {
        save_to_file = true;
        directory = ""; # empty = ~/Pictures
        filename_pattern  = "screenshot_%Y%m%d_%H%M%S";
        copy_to_clipboard = false;
        freeze_screen = false;
        pipe_to_command = false;
        pipe_command = ""; # annotator/uploader, e.g. "swappy -f -" or "satty -f -"
      };
    };
  };
}
