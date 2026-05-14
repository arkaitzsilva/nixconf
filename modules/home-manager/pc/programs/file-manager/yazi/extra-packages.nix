{
  flake.modules.homeManager.pc = { lib, config, pkgs, ... }: lib.mkIf config.programs.yazi.enable {
    home.packages =  with pkgs; [
      # Previews
      file # Text files
      resvg # SVG files
      ffmpeg-headless # Vídeo files
      poppler-utils # PDF files

      # Plugins
      trash-cli # recycle-bin
      ouch # Ouch
    ];
  };
}
