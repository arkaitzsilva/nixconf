{
  flake.modules.homeManager.pc = { config, ... }: {
    wayland.windowManager.hyprland.settings = with config.scheme; {
      config = {
        general = {
          gaps_in = 4;
          gaps_out = 8;
          border_size = 2;
          col = {
            active_border = { colors = [ "rgb(${base0C})" "rgb(${base0A})" "rgb(${base0E})" "rgb(${base08})" ]; angle = 34; };
            inactive_border = "rgb(${base03})";
          };
          resize_on_border = false;
          layout = "dwindle";
        };
      };
    };
  };
}
