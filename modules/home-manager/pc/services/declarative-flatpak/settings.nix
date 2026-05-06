{
  flake.modules.homeManager.pc = { config, ... }: {
    services.flatpak = {
      remotes = {
        flathub = "https://flathub.org/repo/flathub.flatpakrepo";
      };
      packages = [
        "flathub:app/app.zen_browser.zen/x86_64/stable"
        "flathub:app/com.brave.Browser/x86_64/stable"
        "flathub:app/org.torproject.torbrowser-launcher/x86_64/stable"
        "flathub:app/org.inkscape.Inkscape/x86_64/stable"
     ];
      overrides = {
        "global" = {
          Context = {
            filesystems = [
              "~/.themes/${config.gtk.theme.name}:ro"
            ];
          };
          Environment = {
            GTK_THEME = config.gtk.theme.name;
          };
        };
        "app.zen_browser.zen" = {
          Context = {
            filesystems = [
              "~/.zen"
              "~/Descargas"
            ];
          };
          Environment = {
            __NV_PRIME_RENDER_OFFLOAD = 1;
            __GLX_VENDOR_LIBRARY_NAME = "nvidia";
          };
        };
      };
    };
  };
}
