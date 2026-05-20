{
  flake.modules.homeManager.pc = { config, ... }: {
    wayland.windowManager.hyprland.settings = with config.scheme; {
      general = {
        gaps_in = 4;
        gaps_out = 8;
        border_size = 2;
        "col.active_border" = "rgb(${base0C}) rgb(${base0A}) rgb(${base0B}) rgb(${base08}) 45deg";
        "col.inactive_border" = "rgb(${base03})";
        resize_on_border = false;
        layout = "dwidle";
      };
    };   
  };
}
