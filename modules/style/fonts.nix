let
  fontPackages = pkgs: with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    noto-fonts-monochrome-emoji
    nerd-fonts.meslo-lg
  ];
in {
  flake.modules.nixos.pc = { pkgs, ... }: {
    fonts.packages = fontPackages pkgs;
    fonts.fontconfig = {
      enable = true;
      defaultFonts = {
        sansSerif = [ "Noto Sans" ];
        serif     = [ "Noto Serif" ];
        monospace = [ "MesloLGS Nerd Font" ];
        emoji     = [ "Noto Color Emoji" ];
      };
    };
  };
}
