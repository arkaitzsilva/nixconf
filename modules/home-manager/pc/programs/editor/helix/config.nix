{
  flake.modules.homeManager.pc = { lib, config, ... }: lib.mkIf config.programs.helix.enable {
    editor.name = "hx";
  };
}
