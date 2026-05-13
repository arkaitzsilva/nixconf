{ self, ... }: {
  flake.modules.homeManager.pc = { config, pkgs, lib, ... }: lib.mkIf config.qt.enable {
    home.packages = with pkgs; [
      qbittorrent
      self.packages.${stdenv.hostPlatform.system}.emule-qt
    ];
  };
}
