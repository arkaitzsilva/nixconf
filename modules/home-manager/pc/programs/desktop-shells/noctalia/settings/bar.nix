{
  flake.modules.homeManager.pc = {
    programs.noctalia.settings.bar = {
      order = [
        "main"
      ];

      main = {
        position = "top";
        enabled = true;
        auto_hide = false;
        reserve_space = true;
        layer = "top";

        thickness = 34;
        background_opacity = 1.0;
        border = "outline";
        border_width = 1.0;
        shadow = false;
        contact_shadow = false;
        panel_overlap = 1;
        radius = 20;
        radius_top_left = 20;
        radius_top_right = 20;
        radius_bottom_left = 20;
        radius_bottom_right = 20;
        margin_ends = 8;
        margin_edge = 8;
        padding = 10;
        widget_spacing = 14;
        scale = 1.0;
        font_weight = "regular";
        font_family = "";

        capsule = false;
        capsule_fill = "surface_variant";
        capsule_thickness = 0.76;
        capsule_radius = 20;
        capsule_opacity = 1.0;
        # capsule_border = "outline";

        start = [
          "workspaces"
          "media"
        ];
        center = [
          "clock"
          "date"
          "notifications"
        ];
        end = [
          "network"
          "volume"
          "brightness"
          "battery"
        ];
      };
    };
  };
}
