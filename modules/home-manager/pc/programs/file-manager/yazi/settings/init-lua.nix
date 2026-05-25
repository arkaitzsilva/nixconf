{
  flake.modules.homeManager.pc = {
    programs.yazi.initLua = ''
      require("full-border"):setup {
        type = ui.Border.ROUNDED,
      }

      require("git"):setup {
        order = 1500,
      }

      require("recycle-bin"):setup({
        -- Optional: Override automatic trash directory discovery
        -- trash_dir = "~/.local/share/Trash/",  -- Uncomment to use specific directory
      })
    '';
  };
}
