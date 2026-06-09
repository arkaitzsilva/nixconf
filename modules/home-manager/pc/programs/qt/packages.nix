{ self, ... }: {
  flake.modules.homeManager.pc = { config, pkgs, lib, ... }: lib.mkIf config.qt.enable {
    home.packages = with pkgs; [
      qbittorrent
      quickshell
      self.packages.${pkgs.stdenv.hostPlatform.system}.emule-qt
    ];
  };
}
