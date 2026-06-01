{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.starship.settings = with config.scheme.withHashtag; {
      format = "$directory$git_branch$git_status$fill$cmd_duration\n$character";

      add_newline = true;

      directory = {
        style = "bold fg:${base0C}";
        truncation_length = 999;
        format = "[$path]($style)";
      };

      git_branch = {
        style = "bold fg:${base04}";
        format = " [$branch]($style)";
      };

      git_status = {
        style = "bold fg:${base07}";
        format = "[$all_status$ahead_behind]($style)";
        conflicted = "";
        ahead = "⇡";
        behind = "⇣";
        diverged = "";
        up_to_date = "";
        untracked = "";
        stashed = "";
        modified = "";
        staged = "*";
        renamed = "";
        deleted = "";
      };

      cmd_duration = {
        style = "bold fg:${base04}";
        format = "[$duration]($style)";
        min_time = 5000;
        show_milliseconds = false;
      };

      character = {
        success_symbol = "[❯](bold fg:${base0B})";
        error_symbol = "[❯](bold fg:${base08})";
        format = "$symbol ";
      };
    };
  };
}
