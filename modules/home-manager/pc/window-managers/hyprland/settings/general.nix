{
  flake.modules.homeManager.pc = { config, ... }: {
    wayland.windowManager.hyprland.settings = {
      general = {
        gaps_in = 4;
        gaps_out = 8;
        border_size = 2;
        "col.active_border" = "rgb(${config.scheme.base0C})";
        "col.inactive_border" = "rgb(${config.scheme.base03})";
        resize_on_border = false;
        layout = "dwidle";
      };
    };   
  };
}
