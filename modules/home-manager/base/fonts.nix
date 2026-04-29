{
  flake.modules.homeManager.base = { pkgs, ... }: {
    home.packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-color-emoji
      noto-fonts-monochrome-emoji
      cascadia-code
      nerd-fonts.fira-code
    ];
    
    fonts.fontconfig = {
      enable = true;
      defaultFonts = {
        sansSerif = [ "Noto Sans" ];
        serif     = [ "Noto Serif" ];
        monospace = [ "Noto Mono" ];
        emoji     = [ "Noto Color Emoji" ];
      };
    };
  };
}
