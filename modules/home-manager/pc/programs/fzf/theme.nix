{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.fzf.colors = with config.scheme.withHashtag; {
      "fg" = base06;
      "bg" = base00;
      "preview-fg" = base04;
      "preview-bg" = base00;
      "hl" = base07;
      "fg+" = base03;
      "bg+" = base0C;
      "gutter" = base00;
      "hl+" = base00;
      "info" = base0B;
      "border" = base03;
      "prompt" = base0D;
      "pointer" = base0C;
      "marker" = base0C;
      "spinner" = base0C;
      "header" = base0D;
    };
  };
}
