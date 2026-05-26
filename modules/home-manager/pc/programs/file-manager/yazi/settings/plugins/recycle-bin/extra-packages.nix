{
  flake.modules.homeManager.pc = { lib, config, pkgs, ... }: lib.mkIf config.programs.yazi.enable {
    home.packages = [
      pkgs.trash-cli
    ];
  };
}
