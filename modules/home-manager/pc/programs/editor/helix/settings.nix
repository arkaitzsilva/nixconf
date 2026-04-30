{
  flake.modules.homeManager.pc = {
    programs.helix.settings = {
      editor.cursor-shape = {
        insert = "bar";
        normal = "block";
        select = "underline";
      };
      editor.file-picker = {
        hidden = false;
      };
      editor.statusline = {
        left = [ "mode" "spinner" ];
        center = [ "file-name" ];
        right = [ "diagnostics" "selections" "position" "primary-selection-length" "file-encoding" "file-line-ending" "file-type"];
        mode.normal = "NORMAL";
        mode.insert = "INSERT";
        mode.select = "SELECT";
      };
      editor.soft-wrap = {
        enable = true;
      };
    };
  };
}
