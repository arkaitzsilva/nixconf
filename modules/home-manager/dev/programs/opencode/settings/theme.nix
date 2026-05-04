{
  flake.modules.homeManager.dev = { config, ... }: {
    programs.opencode.themes = {
      base16 = with config.scheme.withHashtag; {
        theme = {
          primary = {
            dark = base0D;
            light = base0F;
          };

          secondary = {
            dark = base0C;
            light = base0C;
          };

          accent = {
            dark = base07;
            light = base07;
          };

          error = {
            dark = base08;
            light = base08;
          };

          warning = {
            dark = base09;
            light = base09;
          };

          success = {
            dark = base0B;
            light = base0B;
          };

          info = {
            dark = base0D;
            light = base0F;
          };

          text = {
            dark = base06;
            light = base00;
          };

          textMuted = {
            dark = base0D;
            light = base01;
          };

          background = {
            dark = base00;
            light = base06;
          };

          backgroundPanel = {
            dark = base01;
            light = base05;
          };

          backgroundElement = {
            dark = base02;
            light = base04;
          };

          border = {
            dark = base02;
            light = base03;
          };

          borderActive = {
            dark = base03;
            light = base02;
          };

          borderSubtle = {
            dark = base02;
            light = base03;
          };

          diffAdded = {
            dark = base0B;
            light = base0B;
          };

          diffRemoved = {
            dark = base08;
            light = base08;
          };

          diffContext = {
            dark = base0D;
            light = base03;
          };

          diffHunkHeader = {
            dark = base0D;
            light = base03;
          };

          diffHighlightAdded = {
            dark = base0B;
            light = base0B;
          };

          diffHighlightRemoved = {
            dark = base08;
            light = base08;
          };

          diffAddedBg = {
            dark = base01;
            light = base05;
          };

          diffRemovedBg = {
            dark = base01;
            light = base05;
          };

          diffContextBg = {
            dark = base01;
            light = base05;
          };

          diffLineNumber = {
            dark = base07;
            light = base01;
          };

          diffAddedLineNumberBg = {
            dark = base01;
            light = base05;
          };

          diffRemovedLineNumberBg = {
            dark = base01;
            light = base05;
          };

          markdownText = {
            dark = base04;
            light = base00;
          };

          markdownHeading = {
            dark = base0D;
            light = base0F;
          };

          markdownLink = {
            dark = base0C;
            light = base0C;
          };

          markdownLinkText = {
            dark = base07;
            light = base07;
          };

          markdownCode = {
            dark = base0B;
            light = base0B;
          };

          markdownBlockQuote = {
            dark = base0D;
            light = base03;
          };

          markdownEmph = {
            dark = base09;
            light = base09;
          };

          markdownStrong = {
            dark = base0A;
            light = base0A;
          };

          markdownHorizontalRule = {
            dark = base0D;
            light = base03;
          };

          markdownListItem = {
            dark = base0D;
            light = base0F;
          };

          markdownListEnumeration = {
            dark = base07;
            light = base07;
          };

          markdownImage = {
            dark = base0C;
            light = base0C;
          };

          markdownImageText = {
            dark = base07;
            light = base07;
          };

          markdownCodeBlock = {
            dark = base04;
            light = base00;
          };

          syntaxComment = {
            dark = base0D;
            light = base03;
          };

          syntaxKeyword = {
            dark = base0C;
            light = base0C;
          };

          syntaxFunction = {
            dark = base0D;
            light = base0D;
          };

          syntaxVariable = {
            dark = base07;
            light = base07;
          };

          syntaxString = {
            dark = base0B;
            light = base0B;
          };

          syntaxNumber = {
            dark = base0E;
            light = base0E;
          };

          syntaxType = {
            dark = base07;
            light = base07;
          };

          syntaxOperator = {
            dark = base0C;
            light = base0C;
          };

          syntaxPunctuation = {
            dark = base04;
            light = base00;
          };
        };
      };
    };
  };
}
