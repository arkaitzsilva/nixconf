{
  flake.modules.homeManager.dev = { config, ... }: {
    programs.zed-editor = {
      userSettings.theme = config.scheme.slug;
      themes = {
        "${config.scheme.slug}" = with config.scheme.withHashtag; {
          name = config.scheme.scheme-name;
          author = config.scheme.scheme-author;
          themes = [
            {
              name = config.scheme.scheme-name;
              appearance = config.scheme.scheme-variant;
              style = {
                border = "${base02}ff";
                "border.variant" = "${base01}ff";
                "border.focused" = "${base0D}ff";
                "border.selected" = "${base02}ff";
                "border.transparent" = "#00000000";
                "border.disabled" = "${base03}ff";
                "elevated_surface.background" = "${base01}ff";
                "surface.background" = "${base01}ff";
                background = "${base00}ff";
                "element.background" = "${base01}ff";
                "element.hover" = "${base02}ff";
                "element.active" = "${base02}ff";
                "element.selected" = "${base02}ff";
                "element.disabled" = "${base01}ff";
                "drop_target.background" = "${base03}80";
                "ghost_element.background" = "#00000000";
                "ghost_element.hover" = "${base02}ff";
                "ghost_element.active" = "${base02}ff";
                "ghost_element.selected" = "${base02}ff";
                "ghost_element.disabled" = "${base01}ff";
                text = "${base05}ff";
                "text.muted" = "${base04}ff";
                "text.placeholder" = "${base03}ff";
                "text.disabled" = "${base03}ff";
                "text.accent" = "${base0D}ff";
                icon = "${base05}ff";
                "icon.muted" = "${base04}ff";
                "icon.disabled" = "${base03}ff";
                "icon.placeholder" = "${base04}ff";
                "icon.accent" = "${base0D}ff";
                "status_bar.background" = "${base01}ff";
                "title_bar.background" = "${base01}ff";
                "title_bar.inactive_background" = "${base00}ff";
                "toolbar.background" = "${base00}ff";
                "tab_bar.background" = "${base01}ff";
                "tab.inactive_background" = "${base01}ff";
                "tab.active_background" = "${base00}ff";
                "search.match_background" = "${base0A}66";
                "search.active_match_background" = "${base09}66";
                "panel.background" = "${base01}ff";
                "panel.focused_border" = null;
                "pane.focused_border" = null;
                "scrollbar.thumb.background" = "${base04}4c";
                "scrollbar.thumb.hover_background" = "${base02}ff";
                "scrollbar.thumb.border" = "${base02}ff";
                "scrollbar.track.background" = "#00000000";
                "scrollbar.track.border" = "${base01}ff";
                "editor.foreground" = "${base05}ff";
                "editor.background" = "${base00}ff";
                "editor.gutter.background" = "${base00}ff";
                "editor.subheader.background" = "${base01}ff";
                "editor.active_line.background" = "${base01}80";
                "editor.highlighted_line.background" = "${base01}ff";
                "editor.line_number" = "${base03}ff";
                "editor.active_line_number" = "${base05}ff";
                "editor.hover_line_number" = "${base04}ff";
                "editor.invisible" = "${base03}ff";
                "editor.wrap_guide" = "${base02}0d";
                "editor.active_wrap_guide" = "${base02}1a";
                "editor.document_highlight.read_background" = "${base0D}1a";
                "editor.document_highlight.write_background" = "${base02}66";
                "terminal.background" = "${base00}ff";
                "terminal.foreground" = "${base05}ff";
                "terminal.bright_foreground" = "${base07}ff";
                "terminal.dim_foreground" = "${base03}ff";
                "terminal.ansi.black" = "${base00}ff";
                "terminal.ansi.bright_black" = "${base03}ff";
                "terminal.ansi.dim_black" = "${base00}ff";
                "terminal.ansi.red" = "${base08}ff";
                "terminal.ansi.bright_red" = "${base08}ff";
                "terminal.ansi.dim_red" = "${base08}bf";
                "terminal.ansi.green" = "${base0B}ff";
                "terminal.ansi.bright_green" = "${base0B}ff";
                "terminal.ansi.dim_green" = "${base0B}bf";
                "terminal.ansi.yellow" = "${base0A}ff";
                "terminal.ansi.bright_yellow" = "${base0A}ff";
                "terminal.ansi.dim_yellow" = "${base0A}bf";
                "terminal.ansi.blue" = "${base0D}ff";
                "terminal.ansi.bright_blue" = "${base0D}ff";
                "terminal.ansi.dim_blue" = "${base0D}bf";
                "terminal.ansi.magenta" = "${base0E}ff";
                "terminal.ansi.bright_magenta" = "${base0E}ff";
                "terminal.ansi.dim_magenta" = "${base0E}bf";
                "terminal.ansi.cyan" = "${base0C}ff";
                "terminal.ansi.bright_cyan" = "${base0C}ff";
                "terminal.ansi.dim_cyan" = "${base0C}bf";
                "terminal.ansi.white" = "${base05}ff";
                "terminal.ansi.bright_white" = "${base07}ff";
                "terminal.ansi.dim_white" = "${base04}ff";
                "link_text.hover" = "${base0D}ff";
                "version_control.added" = "${base0B}ff";
                "version_control.modified" = "${base0A}ff";
                "version_control.word_added" = "${base0B}59";
                "version_control.word_deleted" = "${base08}cc";
                "version_control.deleted" = "${base08}ff";
                "version_control.conflict_marker.ours" = "${base0B}1a";
                "version_control.conflict_marker.theirs" = "${base0D}1a";
                conflict = "${base0A}ff";
                "conflict.background" = "${base0A}1a";
                "conflict.border" = "${base0A}80";
                created = "${base0B}ff";
                "created.background" = "${base0B}1a";
                "created.border" = "${base0B}80";
                deleted = "${base08}ff";
                "deleted.background" = "${base08}1a";
                "deleted.border" = "${base08}80";
                error = "${base08}ff";
                "error.background" = "${base08}1a";
                "error.border" = "${base08}80";
                hidden = "${base03}ff";
                "hidden.background" = "${base02}1a";
                "hidden.border" = "${base02}ff";
                hint = "${base0C}ff";
                "hint.background" = "${base0C}1a";
                "hint.border" = "${base0C}80";
                ignored = "${base03}ff";
                "ignored.background" = "${base02}1a";
                "ignored.border" = "${base02}ff";
                info = "${base0D}ff";
                "info.background" = "${base0D}1a";
                "info.border" = "${base0D}80";
                modified = "${base0A}ff";
                "modified.background" = "${base0A}1a";
                "modified.border" = "${base0A}80";
                predictive = "${base03}ff";
                "predictive.background" = "${base03}1a";
                "predictive.border" = "${base03}80";
                renamed = "${base0D}ff";
                "renamed.background" = "${base0D}1a";
                "renamed.border" = "${base0D}80";
                success = "${base0B}ff";
                "success.background" = "${base0B}1a";
                "success.border" = "${base0B}80";
                unreachable = "${base04}ff";
                "unreachable.background" = "${base03}1a";
                "unreachable.border" = "${base03}ff";
                warning = "${base0A}ff";
                "warning.background" = "${base0A}1a";
                "warning.border" = "${base0A}80";
                players = [
                  { cursor = "${base0D}ff"; background = "${base0D}20"; selection = "${base0D}30"; }
                  { cursor = "${base0E}ff"; background = "${base0E}20"; selection = "${base0E}30"; }
                  { cursor = "${base08}ff"; background = "${base08}20"; selection = "${base08}30"; }
                  { cursor = "${base09}ff"; background = "${base09}20"; selection = "${base09}30"; }
                  { cursor = "${base0A}ff"; background = "${base0A}20"; selection = "${base0A}30"; }
                  { cursor = "${base0B}ff"; background = "${base0B}20"; selection = "${base0B}30"; }
                  { cursor = "${base0C}ff"; background = "${base0C}20"; selection = "${base0C}30"; }
                  { cursor = "${base0F}ff"; background = "${base0F}20"; selection = "${base0F}30"; }
                ];
                syntax = {
                  attribute = {
                    color = "${base09}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  boolean = {
                    color = "${base09}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  comment = {
                    color = "${base03}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  "comment.doc" = {
                    color = "${base04}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  constant = {
                    color = "${base09}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  constructor = {
                    color = "${base0D}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  embedded = {
                    color = "${base0F}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  emphasis = {
                    color = "${base0E}ff";
                    font_style = "italic";
                    font_weight = null;
                  };
                  "emphasis.strong" = {
                    color = "${base0A}ff";
                    font_style = null;
                    font_weight = 700;
                  };
                  enum = {
                    color = "${base0C}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  function = {
                    color = "${base0D}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  hint = {
                    color = "${base03}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  keyword = {
                    color = "${base0E}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  label = {
                    color = "${base08}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  link_text = {
                    color = "${base08}ff";
                    font_style = "normal";
                    font_weight = null;
                  };
                  link_uri = {
                    color = "${base09}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  namespace = {
                    color = "${base0A}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  number = {
                    color = "${base09}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  operator = {
                    color = "${base05}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  predictive = {
                    color = "${base03}ff";
                    font_style = "italic";
                    font_weight = null;
                  };
                  preproc = {
                    color = "${base0F}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  primary = {
                    color = "${base05}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  property = {
                    color = "${base08}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  punctuation = {
                    color = "${base05}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  "punctuation.bracket" = {
                    color = "${base05}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  "punctuation.delimiter" = {
                    color = "${base05}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  "punctuation.list_marker" = {
                    color = "${base08}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  "punctuation.markup" = {
                    color = "${base08}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  "punctuation.special" = {
                    color = "${base0F}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  selector = {
                    color = "${base0E}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  "selector.pseudo" = {
                    color = "${base0C}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  string = {
                    color = "${base0B}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  "string.escape" = {
                    color = "${base0C}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  "string.regex" = {
                    color = "${base0C}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  "string.special" = {
                    color = "${base0C}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  "string.special.symbol" = {
                    color = "${base0B}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  tag = {
                    color = "${base08}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  "text.literal" = {
                    color = "${base0B}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  title = {
                    color = "${base0D}ff";
                    font_style = null;
                    font_weight = 700;
                  };
                  type = {
                    color = "${base0A}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  variable = {
                    color = "${base08}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  "variable.special" = {
                    color = "${base09}ff";
                    font_style = null;
                    font_weight = null;
                  };
                  variant = {
                    color = "${base0D}ff";
                    font_style = null;
                    font_weight = null;
                  };
                };
              };
            }
          ];
        };
      };
    };
  };
}
