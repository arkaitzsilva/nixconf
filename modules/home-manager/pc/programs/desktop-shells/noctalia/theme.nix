{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.noctalia.customPalettes = with config.scheme.withHashtag; {
      "${config.scheme.slug}" = {
        dark = {
          mPrimary = base0C;
          mOnPrimary = base00;
          mSecondary = base03;
          mOnSecondary = base06;
          mTertiary = base03;
          mOnTertiary = base06;
          mError = base08;
          mOnError = base00;
          mSurface = base00;
          mOnSurface = base06;
          mSurfaceVariant = base01;
          mOnSurfaceVariant = base04;
          mOutline = base03;
          mShadow = base00;
          mHover = base03;
          mOnHover = base00;
          terminal = {
            background = base00;
            foreground = base05;
            cursor = base0C;
            cursorText = base00;
            selectionBg = base03;
            selectionFg = base05;
            normal = {
              black = base00;
              red = base08;
              green = base0B;
              yellow = base0A;
              blue = base0D;
              magenta = base0E;
              cyan = base0C;
              white = base05;
            };
            bright = {
              black = base02;
              red = base08;
              green = base0B;
              yellow = base0A;
              blue = base0D;
              magenta = base0E;
              cyan = base0C;
              white = base07;
            };
          };
        };
        light = {
          mPrimary = base0C;
          mOnPrimary = base06;
          mSecondary = base04;
          mOnSecondary = base00;
          mTertiary = base08;
          mOnTertiary = base06;
          mError = base08;
          mOnError = base04;
          mSurface = base06;
          mOnSurface = base00;
          mSurfaceVariant = base05;
          mOnSurfaceVariant = base00;
          mOutline = base0B;
          mShadow = base04;
          mHover = base05;
          mOnHover = base00;
          terminal = {
            background = base06;
            foreground = base00;
            cursor = base0C;
            cursorText = base06;
            selectionBg = base00;
            selectionFg = base06;
            normal = {
              black = base06;
              red = base08;
              green = base0B;
              yellow = base0A;
              blue = base0D;
              magenta = base0E;
              cyan = base0C;
              white = base00;
            };
            bright = {
              black = base04;
              red = base08;
              green = base0B;
              yellow = base0A;
              blue = base0D;
              magenta = base0E;
              cyan = base0C;
              white = base07;
            };
          };
        };
      };
    };
  };
}
