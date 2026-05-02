{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    home.packages =  with pkgs; [
      # Previews
      file # Text files
      resvg # SVG files
      ffmpeg-headless # Vídeo files

      # Plugins
      trash-cli # recycle-bin
      ouch # Ouch
    ];
  };
}
