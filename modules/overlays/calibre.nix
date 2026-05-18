# Remove GTK+ dependency from calibre.
{
  flake.overlays.calibre = (final: prev: {
    calibre = prev.calibre.overrideAttrs (oldAttrs: {
      nativeBuildInputs = builtins.filter
        (p: p != prev.wrapGAppsHook3)
        oldAttrs.nativeBuildInputs;

      preFixup = ''
        for program in $out/bin/*; do
          wrapProgram $program \
            ''${qtWrapperArgs[@]} \
            --prefix PATH : ${
              final.lib.makeBinPath [
                final.libjpeg
                final.libwebp
                final.optipng
              ]
            } \
            ${if oldAttrs.popplerSupport or true then "--prefix PATH : ${final.poppler-utils.out}/bin" else ""}
        done
      '';
    });
  });
}
