# Add language translations to the output.
{
  flake.overlays.ly = (final: prev: {
    ly = (prev.ly.override {
      x11Support = false;
    }).overrideAttrs (oldAttrs: {
      postInstall = (oldAttrs.postInstall or "") + ''
        mkdir -p $out/etc/ly/lang
        cp -v res/lang/*.ini $out/etc/ly/lang/
      '';
    });
  });
}
