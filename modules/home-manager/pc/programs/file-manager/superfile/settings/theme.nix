{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.superfile = {
      settings.theme = "base16";
      themes."base16" = with config.scheme.withHashtag; {
        # code_syntax_highlight = "nord";

        # Border
        file_panel_border = base03;
        sidebar_border = base00;
        footer_border = base03;

        # Border Active
        file_panel_border_active = base04;
        sidebar_border_active = base0E;
        footer_border_active = base0E;
        modal_border_active = base03;

        # Background (bg)
        full_screen_bg = base00;
        file_panel_bg = base00;
        sidebar_bg = base00;
        footer_bg = base00;
        modal_bg = base00;

        # Foreground (fg)
        full_screen_fg = base05;
        file_panel_fg = base05;
        sidebar_fg = base05;
        footer_fg = base05;
        modal_fg = base05;

        # Special Color
        cursor = base0C;
        correct = base0C;
        error = base08;
        hint = base07;
        cancel = base04;
        gradient_color = [ base0D base08 ];

        # File Panel Special Items
        file_panel_top_directory_icon = base0C;
        file_panel_top_path = base0C;
        file_panel_item_selected_fg = base08;
        file_panel_item_selected_bg = base00;

        # Sidebar Special Items
        sidebar_title = base0D;
        sidebar_item_selected_fg = base0C;
        sidebar_item_selected_bg = base00;
        sidebar_divider = base03;

        # Modal Special Items
        modal_cancel_fg = base05;
        modal_cancel_bg = base03;
        modal_confirm_fg = base05;
        modal_confirm_bg = base08;

        # Help Menu
        help_menu_hotkey = base07;
        help_menu_title = base0D;
      };
    };
  };
}
