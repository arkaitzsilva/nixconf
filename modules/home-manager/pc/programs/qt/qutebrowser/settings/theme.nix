{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.qutebrowser = {
      settings = with config.scheme.withHashtag; {
        colors = {
          webpage.preferred_color_scheme = config.scheme.variant;
          completion = {
            category = {
              bg = base00;
              border = {
                bottom = base01;
                top    = base03;
              };
              fg = base0B;
            };
            even.bg = base00;
            odd.bg  = base00;
            fg      = base04;
            item.selected = {
              bg     = base03;
              border = {
                bottom = base03;
                top    = base03;
              };
              fg       = base05;
              match.fg = base06;
            };
            match.fg     = base05;
            scrollbar = {
              bg = base00;
              fg = base03;
            };
          };
          downloads = {
            bar.bg   = base00;
            error = {
              bg = base00;
              fg = base08;
            };
            start = {
              bg = base00;
              fg = base0D;
            };
            stop = {
              bg = base00;
              fg = base0B;
            };
            system = {
              fg = "none";
              bg = "none";
            };
          };
          hints = {
            bg       = base01;
            fg       = base04;
            match.fg = base07;
          };
          keyhint = {
            bg        = base01;
            fg        = base04;
            suffix.fg = base07;
          };
          messages = {
            error = {
              bg     = base03;
              border = base01;
              fg     = base08;
            };
            info = {
              bg     = base03;
              border = base01;
              fg     = base05;
            };
            warning = {
              bg     = base03;
              border = base01;
              fg     = base09;
            };
          };
          prompts = {
            bg          = base01;
            border      = "1px solid ${base03}";
            fg          = base05;
            selected = {
              bg = base03;
              fg = base06;
            };
          };
          statusbar = {
            normal     = { bg = base00; fg = base05; };
            insert     = { bg = base00; fg = base05; };
            command    = { bg = base00; fg = base05; };
            caret      = { bg = base00; fg = base09; };
            passthrough = { bg = base00; fg = base09; };
            progress.bg = base00;
            private    = { bg = base0E; fg = base06; };
            command.private = { bg = base00; fg = base04; };
            url = {
              fg               = base05;
              error.fg         = base08;
              hover.fg         = base0C;
              success.http.fg  = base07;
              success.https.fg = base0B;
              warn.fg          = base0A;
            };
          };
          tabs = {
            bar.bg = base00;
            even   = { bg = base00; fg = base04; };
            odd    = { bg = base00; fg = base04; };
            indicator = {
              start  = base09;
              stop   = base0B;
              error  = base08;
              system = "none";
            };
            selected = {
              even = { bg = base02; fg = base06; };
              odd  = { bg = base02; fg = base06; };
            };
          };
          contextmenu = {
            menu     = { bg = base00; fg = base05; };
            disabled = { bg = base01; fg = base03; };
            selected = { bg = base03; fg = base06; };
          };
        };

        hints.border = "1px solid ${base0C}";

        tabs.indicator.width = 2;
        tabs.favicons.scale  = 1;
      };
    };
  };
}
