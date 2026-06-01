let
  fontPackages = pkgs: with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    noto-fonts-monochrome-emoji
    nerd-fonts.fira-code
    nerd-fonts.iosevka-term
    nerd-fonts.caskaydia-cove
    nerd-fonts.terminess-ttf
  ];
  
  polyModule = {
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
in {
  flake.modules = {
    nixos.pc = { pkgs, ... }: {
      imports = [ polyModule ];
      fonts.packages = fontPackages pkgs;
    };

    homeManager.pc = { pkgs, ... }: {
      imports = [ polyModule ];
      home.packages = fontPackages pkgs;
    };
  };
}
