{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.kitty = {
      shellIntegration.mode = "no-cursor";
      settings = {
        font_family = config.terminal.font-family;
        font_size = config.terminal.font-size;

        # adjust_column_width = "110%";

        window_padding_width = 8;

        cursor_shape = "block";
        cursor_blink_interval = 0.5;
        cursor_trail = 3;
        cursor_trail_decay = "0.1 0.4";
        cursor_trail_start_threshold = 3;

        disable_ligatures = "always";
        sync_to_monitor = "no";
        input_delay = 1;
        repaint_delay = 8;

        scrollback_lines = 1500;

        background_opacity = 1.0;
        visual_bell_duration = 0;
        enable_audio_bell = "no";
      };
    };
  };
}
