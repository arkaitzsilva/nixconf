{
  flake.modules.homeManager.pc = {
    services.flatpak = {
      remotes = {
        flathub = "https://flathub.org/repo/flathub.flatpakrepo";
      };
      packages = [
        "flathub:app/app.zen_browser.zen/x86_64/stable"
        "flathub:app/com.brave.Browser/x86_64/stable"
        "flathub:app/org.torproject.torbrowser-launcher/x86_64/stable"
        "flathub:app/org.qbittorrent.qBittorrent/x86_64/stable"
        "flathub:app/org.inkscape.Inkscape/x86_64/stable"
        "flathub:app/com.obsproject.Studio/x86_64/stable"
        "flathub:app/org.kde.kwrite/x86_64/stable"
        "flathub:runtime/org.kde.KStyle.Kvantum/x86_64/6.9"
        "flathub:runtime/org.kde.KStyle.Kvantum/x86_64/6.10"
      ];
      overrides = {
        "global" = {
          Context = {
            filesystems = [
              "xdg-config/Kvantum:ro"
              "xdg-data/color-schemes:ro"
            ];
          };
          Environment = {
            QT_QPA_PLATFORMTHEME = "xdgdesktopportal";
            QT_STYLE_OVERRIDE = "kvantum";
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
        "org.qbittorrent.qBittorrent" = {
          Context = {
            filesystems = [
              "~/Torrent"
            ];
          };
        };
      };
    };
  };
}
