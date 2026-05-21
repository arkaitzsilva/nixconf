{
  flake.modules.homeManager.pc = { lib, config, pkgs, ... }: lib.mkIf config.programs.helix.enable {
    home.packages = with pkgs; [
      nixd # nix language server
    ];
  };
}
