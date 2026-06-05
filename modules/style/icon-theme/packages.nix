{ self, ... }: {
  flake.modules.homeManager.pc = { pkgs, ... }: {
    home.packages = [
      self.packages.${pkgs.stdenv.hostPlatform.system}.luv-icon-theme
    ];
  };
}
