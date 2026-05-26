{
  flake.modules.homeManager.pc = { lib, ... }: {
    programs.yazi.plugins."full-border" = {
      setup = true;
      settings = {
        type = lib.generators.mkLuaInline "ui.Border.ROUNDED";
      };
    };
  };
}
