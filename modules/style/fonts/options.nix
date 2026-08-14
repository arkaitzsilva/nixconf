{ lib, ... }:
let
  mkFontOptions = { displayName }: {
    package = lib.mkOption {
      type = lib.types.str;
      description = "nixpkgs attribute name of the ${displayName} font package.";
      default = null;
    };
    name = lib.mkOption {
      type = lib.types.str;
      description = "Name of the ${displayName} font family.";
      default = null;
    };
  };

  mkFontSizeOption = { target }: lib.mkOption {
    description = ''
      The font size used for ${target}.

      This is measured in [points](https://en.wikipedia.org/wiki/Point_(typography)).
      In a computing context, there should be 72 points per inch.

      [The CSS specification](https://drafts.csswg.org/css-values/#absolute-lengths)
      says there should be 96 reference pixels per inch. This means CSS
      uses a fixed ratio of 3 points to every 4 pixels, which is
      sometimes useful. However, reference pixels might not correspond
      to physical pixels, so this conversion may be invalid for other
      applications.

      The measurements given in inches are likely to be incorrect
      unless you've
      [manually set your DPI](https://linuxreviews.org/HOWTO_set_DPI_in_Xorg).
    '';

    type = with lib.types; either ints.unsigned float;
    default = null;
  };
in {
  options.style.fonts = {
    serif = mkFontOptions {
      displayName = "Serif";
    };

    sansSerif = mkFontOptions {
      displayName = "Sans-serif";
    };

    monospace = mkFontOptions {
      displayName = "Monospace";
    };

    emoji = mkFontOptions {
      displayName = "Emoji";
    };

    sizes = {
      desktop = mkFontSizeOption {
        target = "window titles, status bars, and other general elements of the desktop";
      };

      applications = mkFontSizeOption {
        target = "applications";
      };

      terminal = mkFontSizeOption {
        target = "terminals and text editors";
      };

      popups = mkFontSizeOption {
        target = "notifications, popups, and other overlay elements of the desktop";
      };
    };

    toPx = lib.mkOption {
      type = lib.types.functionTo lib.types.float;
      readOnly = true;
      default = pt: pt * 4.0 / 3.0;
      defaultText = lib.literalExpression "pt: pt * 4.0 / 3.0";
      description = ''
        Converts a size in points to logical pixels.

        This uses the CSS ratio of 3 points to every 4 pixels, which
        follows from there being 72 points per inch and 96 reference
        pixels per inch. Prefer this over hard-coding the conversion in
        consumers that need pixel-based sizes.
      '';
    };

    toPxRounded = lib.mkOption {
      type = lib.types.functionTo lib.types.int;
      readOnly = true;
      default = pt: builtins.floor (pt * 4.0 / 3.0 + 0.5);
      defaultText = lib.literalExpression "pt: builtins.floor (pt * 4.0 / 3.0 + 0.5)";
      description = ''
        Converts a size in points to the nearest logical pixel, rounded
        to an integer. Use this for applications that only accept
        integer pixel sizes.
      '';
    };
  };
}
