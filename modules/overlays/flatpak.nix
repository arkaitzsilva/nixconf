# Remove gtk related dependencies
{
  flake.overlays.flatpak = (final: prev: {
    flatpak = (prev.flatpak.override {
      withDconf = false;
      withGtkDoc = false;
      withIntrospection = false;
    }).overrideAttrs (oldAttrs: {
      postInstall = ''
        ${oldAttrs.postInstall or ""}
        rm -f $out/share/flatpak/triggers/gtk-icon-cache.trigger
      '';
    });
  });
}
