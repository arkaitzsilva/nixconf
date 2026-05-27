{
  flake.modules.homeManager.pc = {
    programs.kitty = {
      shellIntegration.mode = "no-cursor";
      settings = {
        font_family = "FiraCode Nerd Font";
        font_size = 11;
        window_padding_width = 8;
        cursor_shape = "block";
        cursor_blink_interval = 0.5;

        cursor_trail = 200;
        cursor_trail_decay = "0.1 0.3";
        cursor_trail_start_threshold = 3;

        disable_ligatures = "always";
        sync_to_monitor = "no";
        input_delay = 1;
        repaint_delay = 3;
      };
    };
  };
}
