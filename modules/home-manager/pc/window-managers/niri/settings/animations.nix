{
  flake.modules.homeManager.pc = {
    wayland.windowManager.niri.settings.animations = {
      "workspace-switch" = {
        "duration-ms" = 700;
        curve._args = ["cubic-bezier" 0.1 1 0 1];
      };
      "window-open" = {
        "duration-ms" = 500;
        curve._args = ["ease-out-cubic"];
        "custom-shader" = builtins.readFile ./shaders/morph_open.glsl;
      };
      "window-close" = {
        "duration-ms" = 600;
        curve._args = ["ease-out-cubic"];
        "custom-shader" = builtins.readFile ./shaders/glitch_close.glsl;
      };
      "window-movement" = {
        "duration-ms" = 300;
        curve._args = ["cubic-bezier" 0.05 0.85 0.03 0.97];
      };
      "horizontal-view-movement" = {
        "duration-ms" = 500;
        curve._args = ["cubic-bezier" 0.3 1.29 0.35 0.98];
      };
      "overview-open-close" = {
        "duration-ms" = 400;
        curve._args = ["cubic-bezier" 0.05 0.7 0.1 1];
      };
    };
  };
}
