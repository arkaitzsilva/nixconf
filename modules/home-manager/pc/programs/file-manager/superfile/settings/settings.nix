{
  flake.modules.homeManager.pc = {
    programs.superfile.settings = {
      editor = "";
      dir_editor = "";
      default_directory = ".";
      shell_close_on_success = false;
      auto_check_update = false;
      cd_on_quit = false;
      default_open_file_preview = true;
      show_image_preview = true;
      show_panel_footer_info = true;
      file_size_use_si = true;
      default_sort_type = 0;
      sort_order_reversed = false;
      case_sensitive_sort = false;
      debug = true;
      ignore_missing_fields = false;
      page_scroll_size = 0;
      file_panel_extra_columns = 0;
      file_panel_name_percent = 100;
      code_previewer = "";
      nerdfont = true;
      show_select_icons = true;
      transparent_background = true;
      file_preview_width = 0;
      enable_file_preview_border = true;
      sidebar_width = 20;
      sidebar_sections = [ "home" "disks" ];
      border_top = "─";
      border_bottom = "─";
      border_left = "│";
      border_right = "│";
      border_top_left = "╭";
      border_top_right = "╮";
      border_bottom_left = "╰";
      border_bottom_right = "╯";
      border_middle_left = "├";
      border_middle_right = "┤";
    };
  };
}
