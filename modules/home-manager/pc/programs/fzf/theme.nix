{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.fzf.colors = with config.scheme.withHashtag; {
      "fg" = base0D;
      "bg" = base00;
      "preview-fg" = base03;
      "preview-bg" = base00;
      "hl" = base0D;
      "fg+" = base0D;
      "bg+" = base01;
      "gutter" = base00;
      "hl+" = base0D;
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
