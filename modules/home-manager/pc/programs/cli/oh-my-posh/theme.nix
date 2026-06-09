{
  flake.modules.homeManager.base = { config, ... }: {
    programs.oh-my-posh = {
      settings =  with config.scheme.withHashtag; {
        "$schema" = "https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/schema.json";

        secondary_prompt = {
          template = "❯❯ ";
          foreground = "${base0E}";
          background = "transparent";
        };

        transient_prompt = {
          template = "❯ ";
          background = "transparent";
          foreground_templates = [
            "{{if gt .Code 0}}${base08}{{end}}"
            "{{if eq .Code 0}}${base0E}{{end}}"
          ];
        };

        console_title_template = "{{.Folder}}{{if .Root}} :: root{{end}} :: {{.Shell}}";

        blocks = [
          {
            type = "prompt";
            alignment = "left";
            newline = true;
            segments = [
              {
                type = "path";
                style = "plain";
                foreground = "${base0C}";
                background = "transparent";
                template = "{{ .Path }}";
                properties = {
                  cache_duration = "none";
                  style = "full";
                };
              }
              {
                type = "git";
                style = "plain";
                foreground = "${base04}";
                background = "transparent";
                template = " <b>{{ .HEAD }}{{ if or (.Working.Changed) (.Staging.Changed) }}*{{ end }} <${base0C}>{{ if gt .Behind 0 }}⇣{{ end }}{{ if gt .Ahead 0 }}⇡{{ end }}</b></>";
                properties = {
                  branch_icon = "";
                  cache_duration = "none";
                  commit_icon = "@";
                  fetch_status = true;
                };
              }
            ];
          }
          {
            type = "rprompt";
            overflow = "hidden";
            segments = [
              {
                type = "executiontime";
                style = "plain";
                foreground = "${base04}";
                background = "transparent";
                template = "{{ .FormattedMs }}";
                properties = {
                  style = "round";
                  cache_duration = "none";
                  threshold = 5000;
                };
              }
            ];
          }
          {
            type = "prompt";
            alignment = "left";
            newline = true;
            segments = [
              {
                type = "text";
                style = "plain";
                background = "transparent";
                template = "❯";
                properties = {
                  cache_duration = "none";
                };
                foreground_templates = [
                  "{{if gt .Code 0}}${base08}{{end}}"
                  "{{if eq .Code 0}}${base0E}{{end}}"
                ];
              }
            ];
          }
        ];

        version = 3;
        final_space = true;
      };
    };
  };
}
