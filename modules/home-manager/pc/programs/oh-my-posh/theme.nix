{
  flake.modules.homeManager.base = { config, ... }: {
    programs.oh-my-posh = {
      settings = {
        "$schema" = "https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/schema.json";
        extends = "/home/alienware/.config/oh-my-posh/theme.json";

        secondary_prompt = {
          template = "❯❯ ";
          foreground = "p:green";
          background = "transparent";
        };

        transient_prompt = {
          template = "❯ ";
          background = "transparent";
          foreground_templates = [
            "{{if gt .Code 0}}p:red{{end}}"
            "{{if eq .Code 0}}p:green{{end}}"
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
                foreground = "p:blue";
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
                foreground = "p:white";
                background = "transparent";
                template = " {{ .HEAD }}{{ if or (.Working.Changed) (.Staging.Changed) }}*{{ end }} <p:teal>{{ if gt .Behind 0 }}⇣{{ end }}{{ if gt .Ahead 0 }}⇡{{ end }}</>";
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
                foreground = "p:white";
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
                  "{{if gt .Code 0}}p:red{{end}}"
                  "{{if eq .Code 0}}p:green{{end}}"
                ];
              }
            ];
          }
        ];

        version = 3;
        final_space = true;

        palette = {
          green = "${config.scheme.withHashtag.base0B}";
          red = "${config.scheme.withHashtag.base08}";
          blue = "${config.scheme.withHashtag.base0C}";
          purple = "${config.scheme.withHashtag.base0E}";
          teal = "${config.scheme.withHashtag.base07}";
          white = "${config.scheme.withHashtag.base04}";
        };
      };
    };
  };
}
