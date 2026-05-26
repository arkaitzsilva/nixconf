{
  flake.modules.homeManager.pc = {
    programs.kitty = {
      shellIntegration.mode = "no-cursor";
      settings = {
        font_family = "FiraCode Nerd Font";
        bold_font = "auto";
        italic_font = "auto";
        bold_italic_font = "auto";
        window_padding_width = 8;
        cursor_shape = "block";
        cursor_blink_interval = 0.5;
        cursor_trail = 200;
        cursor_trail_decay = "0.1 0.3";
        cursor_trail_start_threshold = 3;
        disable_ligatures = "always";
      };
    };
  };
}
