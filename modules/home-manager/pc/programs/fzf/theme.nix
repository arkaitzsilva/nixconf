{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.fzf.colors = with config.scheme.withHashtag; {
      "fg" = base04;
      "bg" = base00;
      "preview-fg" = base04;
      "preview-bg" = base00;
      "hl" = base0C;
      "fg+" = base00;
      "bg+" = base0C;
      "gutter" = base00;
      "hl+" = base06;
      "info" = base0B;
      "border" = base03;
      "prompt" = base0C;
      "pointer" = base0C;
      "marker" = base0C;
      "spinner" = base0C;
      "header" = base0C;
    };
  };
}
