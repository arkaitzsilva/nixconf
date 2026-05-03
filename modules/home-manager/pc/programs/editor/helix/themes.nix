{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.helix = {
      settings.theme = config.scheme.scheme-slug;
      themes = {
        "${config.scheme.scheme-slug}" = with config.scheme.withHashtag; {
          # --- SYNTAX HIGHLIGHTING ---
          "constant"                   = base04;
          "constant.builtin"           = base0D;
          "constant.builtin.boolean"   = base0D;
          "constant.builtin.character" = base0E;
          "constant.character.escape"  = base0A;
          "constant.macro"             = base0D;
          "constant.numeric"           = base0E;
          "constructor"                = base0C;

          "diagnostic"             = { underline = { color = base0A; style = "curl"; }; };
          "diagnostic.error"       = { underline = { color = base08; style = "curl"; }; };
          "error"                  = base08;
          "diagnostic.hint"        = { underline = { color = base0F; style = "curl"; }; };
          "hint"                   = base0F;
          "diagnostic.info"        = { underline = { color = base0C; style = "curl"; }; };
          "info"                   = base0C;
          "diagnostic.warning"     = { underline = { color = base0A; style = "curl"; }; };
          "warning"                = base0A;
          "diagnostic.unnecessary" = { modifiers = [ "dim" ]; };
          "diagnostic.deprecated"  = { modifiers = [ "crossed_out" ]; };

          "diff.delta" = base0A;
          "diff.minus" = base08;
          "diff.plus"  = base0B;

          "function"         = base0C;
          "function.builtin" = base07;
          "function.method"  = base0C;
          "function.macro"   = base0D;
          "function.special" = base0D;

          "git.delta.moved" = base09;

          "keyword"                     = base0D;
          "keyword.control.conditional" = base0D;
          "keyword.control.exception"   = base0D;
          "keyword.control.repeat"      = base0D;
          "keyword.directive"           = base0D;
          "keyword.function"            = base0D;
          "keyword.operator"            = base0D;
          "keyword.return"              = base0D;
          "keyword.storage.modifier"    = base0D;
          "keyword.storage.type"        = base0D;

          "punctuation"           = base06;
          "punctuation.bracket"   = base06;
          "punctuation.delimiter" = base06;
          "punctuation.special"   = base0D;

          "string"         = base0B;
          "string.escape"  = base0A;
          "string.regex"   = base0A;
          "string.special" = base0A;

          "type"         = base07;
          "type.builtin" = base07;

          "variable"              = base04;
          "variable.builtin"      = base0D;
          "variable.other.member" = base04;
          "variable.parameter"    = base0C;
          "attribute"             = base0D;

          "label"     = base07;
          "namespace" = base04;
          "operator"  = base0D;
          "special"   = base0D;
          "tag"       = base07;
          "comment"   = { fg = base03; modifiers = [ "italic" ]; };

          # --- EDITOR UI ---
          "ui.background" = { bg = base00; };
          "ui.text"       = base04;
          "ui.window"     = base01;

          "ui.debug.active"     = base0A;
          "ui.debug.breakpoint" = base08;

          "ui.menu"          = { bg = base01; };
          "ui.menu.scroll"   = { fg = base04; bg = base03; };
          "ui.menu.selected" = { fg = base0C; bg = base02; };
          "ui.popup"         = { bg = base01; };
          "ui.popup.info"    = { bg = base01; };
          "ui.help"          = { bg = base01; };
          "ui.text.focus"    = { fg = base0C; bg = base02; };

          "ui.gutter"          = base05;
          "ui.linenr"          = base03;
          "ui.linenr.selected" = base05;

          "ui.cursor"               = { fg = base04; modifiers = [ "reversed" ]; };
          "ui.cursorcolumn.primary" = { bg = base01; };
          "ui.cursorline.primary"   = { bg = base01; };
          "ui.cursor.match"         = { bg = base03; };
          "ui.selection"            = { bg = base03; };
          "ui.highlight"            = { fg = base0C; bg = base02; };

          "ui.statusline"           = { bg = base01; };
          "ui.statusline.inactive"  = { fg = base0C; bg = base01; };
          "ui.statusline.insert"    = { fg = base01; bg = base06; };
          "ui.statusline.normal"    = { fg = base01; bg = base0C; };
          "ui.statusline.select"    = { fg = base01; bg = base07; };
          "ui.statusline.separator" = base03;

          "ui.virtual.indent-guide" = base03;
          "ui.virtual.inlay-hint"   = { fg = base03; modifiers = [ "italic" ]; };
          "ui.virtual.jump-label"   = { fg = base08; modifiers = [ "bold" ]; };
          "ui.virtual.ruler"        = { bg = base01; };
          "ui.virtual.whitespace"   = base03;
          "ui.virtual.wrap"         = base03;

          "ui.bufferline"        = { fg = base05; bg = base01; };
          "ui.bufferline.active" = {
            fg = base06;
            bg = base02;
            underline = { color = base0C; style = "line"; };
            modifiers = [ "italic" ];
          };

          # --- MARKUP ---
          "markup.heading"       = base0C;
          "markup.list"          = base0D;
          "markup.bold"          = { modifiers = [ "bold" ]; };
          "markup.italic"        = { modifiers = [ "italic" ]; };
          "markup.strikethrough" = { modifiers = [ "crossed_out" ]; };
          "markup.link.text"     = base0C;
          "markup.raw"           = base07;
        };
      };
    };
  };
}
