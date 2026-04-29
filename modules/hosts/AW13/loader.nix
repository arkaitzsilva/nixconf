{
  configurations.nixos.AW13.module = { pkgs, ... }: {
    boot.loader.grub = {
      useOSProber = true;
      splashImage = null;
      gfxmodeEfi = "3200x1800";
      font = "${pkgs.terminus_font_ttf}/share/fonts/truetype/TerminusTTF.ttf";
      fontSize = 32;
    };
  };
}
