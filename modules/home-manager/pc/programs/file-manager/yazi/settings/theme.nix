{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.yazi.theme = with config.scheme.withHashtag; {
      mgr = {
        cwd = { fg = base0C; };

        find_keyword  = { fg = base0A; italic = true; };
        find_position = { fg = base0E; bg = "reset"; italic = true; };

        marker_copied   = { fg = base0B; bg = base0B; };
        marker_cut      = { fg = base08; bg = base08; };
        marker_marked   = { fg = base0F; bg = base0F; };
        marker_selected = { fg = base0C; bg = base0C; };

        count_copied   = { fg = base00; bg = base0B; };
        count_cut      = { fg = base00; bg = base08; };
        count_selected = { fg = base00; bg = base0C; };

        border_symbol = "│";
        border_style  = { fg = base03; };

        syntect_theme = "~/.config/yazi/theme.tmTheme";
      };

      indicator = {
        parent  = { fg = base04; bg = base03; };
        current = { fg = base00; bg = base0C; };
        preview = { fg = base04; bg = base01; };
        padding = { open = "█"; close = "█"; };
      };

      tabs = {
        active   = { fg = base00; bg = base06; bold = true; };
        inactive = { fg = base06; bg = base03; };
      };

      mode = {
        normal_main = { fg = base00; bg = base0C; bold = true; };
        normal_alt  = { fg = base0C; bg = base01; };

        select_main = { fg = base00; bg = base0B; bold = true; };
        select_alt  = { fg = base0B; bg = base01; };

        unset_main  = { fg = base00; bg = base09; bold = true; };
        unset_alt   = { fg = base09; bg = base01; };
      };

      status = {
        sep_left  = { open = ""; close = ""; };
        sep_right = { open = ""; close = ""; };

        progress_label  = { fg = "#ffffff"; bold = true; };
        progress_normal = { fg = base0C; bg = base03; };
        progress_error  = { fg = base08; bg = base03; };

        perm_type  = { fg = base0C; };
        perm_read  = { fg = base0A; };
        perm_write = { fg = base08; };
        perm_exec  = { fg = base0B; };
        perm_sep   = { fg = base03; };
      };

      input = {
        border   = { fg = base0C; };
        title    = {};
        value    = {};
        selected = { reversed = true; };
      };

      pick = {
        border   = { fg = base0C; };
        active   = { fg = base0E; };
        inactive = {};
      };

      confirm = {
        border  = { fg = base0C; };
        title   = { fg = base0C; };
        list    = {};
        btn_yes = { reversed = true; };
        btn_no  = {};
      };

      cmp = {
        border = { fg = base0C; };
      };

      tasks = {
        border  = { fg = base0C; };
        title   = {};
        hovered = { underline = true; };
      };

      which = {
        mask            = { bg = base01; };
        cand            = { fg = base07; };
        rest            = { fg = base04; };
        desc            = { fg = base0E; };
        separator       = "  ";
        separator_style = { fg = base03; };
      };

      help = {
        on      = { fg = base07; };
        run     = { fg = base0E; };
        desc    = { fg = base04; };
        hovered = { bg = base03; bold = true; };
        footer  = { fg = base06; bg = base03; };
      };

      notify = {
        title_info  = { fg = base07; };
        title_warn  = { fg = base0A; };
        title_error = { fg = base08; };
      };

      filetype = {
        rules = [
          { mime = "image/*";                                        fg = base07; }
          { mime = "{audio,video}/*";                                fg = base0A; }
          { mime = "application/*zip";                               fg = base0E; }
          { mime = "application/x-{tar,bzip*,7z-compressed,xz,rar}"; fg = base0E; }
          { mime = "application/{pdf,doc,rtf}";                      fg = base0B; }
          { name = "*";                                              fg = base06; }
          { name = "*/";                                             fg = base0C; }
        ];
      };

      spot = {
        border   = { fg = base0C; };
        title    = { fg = base0C; };
        tbl_cell = { fg = base0C; reversed = true; };
        tbl_col  = { bold = true; };
      };

      icon = {
        globs = [
          { url = "*.tar.gz"; text = ""; fg = base04; }
        ];

        dirs = [
          { name = ".git";       text = ""; fg = base0C; }
          { name = "Escritorio"; text = ""; fg = base0C; }
          { name = "Descargas";  text = ""; fg = base0C; }
          { name = "Documentos"; text = ""; fg = base0C; }
          { name = "Imágenes";   text = ""; fg = base0C; }
          { name = "Música";     text = ""; fg = base0C; }
          { name = "Vídeos";     text = ""; fg = base0C; }
        ];

        files = [
          { name = "README.md";     text = ""; fg = base04; }
          { name = "hyprland.conf"; text = ""; fg = base04; }
          { name = ".gitignore";    text = ""; fg = base04; }
          { name = "config";        text = ""; fg = base04; }
        ];

        exts = [
          { name = "nix";  text = "";  fg = base04; }
          { name = "ini";  text = "";  fg = base04; }
          { name = "zip";  text = "";  fg = base04; }
          { name = "toml"; text = "";  fg = base04; }
          { name = "conf"; text = "";  fg = base04; }
          { name = "svg";  text = "";  fg = base04; }
          { name = "json"; text = "";  fg = base04; }
          { name = "py";   text = "󰌠"; fg = base04; }
          { name = "lock"; text = "󰌾"; fg = base04; }
          { name = "lua";  text = "";  fg = base04; }
        ];

        conds = [
          { "if" = "!dir & link";   text = "󰌷"; fg = base04; }
          { "if" = "!file & link";  text = "󰌷"; fg = base0C; }
          { "if" = "!(dir | link)"; text = "";  fg = base04; }
          { "if" = "dir";           text = "";  fg = base0C; }
        ];
      };
    };
  };
}
