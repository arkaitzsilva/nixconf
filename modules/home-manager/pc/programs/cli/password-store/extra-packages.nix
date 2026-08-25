{
  flake.modules.homeManager.pc = { config, pkgs, lib, ... }: lib.mkIf config.programs.password-store.enable {
    home.packages = with pkgs; [
      wl-clipboard
    ];
  };
}
