{
  flake.modules.homeManager.pc = { config, lib, ...}: lib.mkIf config.qt.enable {
    xdg.configFile."Kvantum/kvantum.kvconfig".text = ''
      [General]
      theme=base16
    '';
  };
}
