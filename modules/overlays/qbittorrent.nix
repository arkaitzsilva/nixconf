# Remove GTK+ dependency.
{
  flake.overlays.qbittorrent = (final: prev: {
    qbittorrent = prev.qbittorrent.overrideAttrs (oldAttrs: {
      nativeBuildInputs = builtins.filter
        (p: p != prev.wrapGAppsHook3)
        oldAttrs.nativeBuildInputs;

      dontWrapGApps = false;
      preFixup = "";
    });
  });
}
