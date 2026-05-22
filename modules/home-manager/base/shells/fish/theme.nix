{
  flake.modules.homeManager.base = { config, ... }: {
    programs.fish.interactiveShellInit = with config.scheme; ''
      set fish_color_command ${base0B}
      set fish_color_error ${base08}
      set fish_color_param ${base0C}
      set fish_color_quote ${base0A}
      set fish_color_redirection ${base0E}
      set fish_color_end ${base0E}
      set fish_color_operator ${base0E}
      set fish_color_escape ${base09}
      set fish_color_autosuggestion ${base03}
      set fish_color_selection --background=${base01}
      set fish_color_search_match --background=${base02}
      set fish_color_cancel ${base08}
      set fish_pager_color_progress ${base0C}
      set fish_pager_color_prefix ${base0C}
      set fish_pager_color_completion ${base04}
      set fish_pager_color_description ${base03}
      set fish_pager_color_selected_background ${base01}
    '';
  };
}
