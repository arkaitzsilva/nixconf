{
  flake.modules.homeManager.base = { config, ... }: {
    programs.fish.interactiveShellInit = with config.scheme; ''
      # Syntax Highlighting Colors
      set fish_color_normal ${base04}
      set fish_color_command ${base0E}
      set fish_color_keyword ${base09}
      set fish_color_quote ${base0C}
      set fish_color_redirection ${base09}
      set fish_color_end ${base04}
      set fish_color_error ${base08}
      set fish_color_param ${base0C}
      set fish_color_comment ${base03}
      set fish_color_selection --background=${base01}
      set fish_color_search_match --background=${base01}
      set fish_color_operator ${base0C}
      set fish_color_escape ${base09}
      set fish_color_autosuggestion ${base03}
      set fish_color_cancel ${base08} --reverse
      set fish_color_option ${base0C}
      set fish_color_history_current --bold
      set fish_color_status ${base08}
      set fish_color_valid_path --underline

      # Default Prompt Colors
      set fish_color_cwd ${base0C}
      set fish_color_cwd_root ${base08}
      set fish_color_host ${base0E}
      set fish_color_host_remote ${base0E}
      set fish_color_user ${base0C}

      # Completion Pager Colors
      set fish_pager_color_progress ${base0E}
      set fish_pager_color_background
      set fish_pager_color_prefix ${base0C}
      set fish_pager_color_completion ${base04}
      set fish_pager_color_description ${base04}
      set fish_pager_color_selected_background --background=${base01}
      set fish_pager_color_selected_prefix ${base0C}
      set fish_pager_color_selected_completion ${base04}
      set fish_pager_color_selected_description ${base04}
      set fish_pager_color_secondary_background
      set fish_pager_color_secondary_prefix ${base0C}
      set fish_pager_color_secondary_completion ${base04}
      set fish_pager_color_secondary_description ${base04}
    '';
  };
}
