{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.btop = {
      settings.color_theme = config.scheme.scheme-slug;
      themes = {
        "${config.scheme.scheme-slug}" = with config.scheme.withHashtag; ''
          theme[main_bg]="${base00}"
          theme[main_fg]="${base04}"
          theme[title]="${base07}"
          theme[hi_fg]="${base0F}"
          theme[selected_bg]="${base03}"
          theme[selected_fg]="${base06}"
          theme[inactive_fg]="${base03}"
          theme[proc_misc]="${base0F}"
          theme[cpu_box]="${base03}"
          theme[mem_box]="${base03}"
          theme[net_box]="${base03}"
          theme[proc_box]="${base03}"
          theme[div_line]="${base03}"
          theme[temp_start]="${base0D}"
          theme[temp_mid]="${base0C}"
          theme[temp_end]="${base06}"
          theme[cpu_start]="${base0D}"
          theme[cpu_mid]="${base0C}"
          theme[cpu_end]="${base06}"
          theme[free_start]="${base0D}"
          theme[free_mid]="${base0C}"
          theme[free_end]="${base06}"
          theme[cached_start]="${base0D}"
          theme[cached_mid]="${base0C}"
          theme[cached_end]="${base06}"
          theme[available_start]="${base0D}"
          theme[available_mid]="${base0C}"
          theme[available_end]="${base06}"
          theme[used_start]="${base0D}"
          theme[used_mid]="${base0C}"
          theme[used_end]="${base06}"
          theme[download_start]="${base0D}"
          theme[download_mid]="${base0C}"
          theme[download_end]="${base06}"
          theme[upload_start]="${base0D}"
          theme[upload_mid]="${base0C}"
          theme[upload_end]="${base06}"
        '';
      };
    };
  };
}
