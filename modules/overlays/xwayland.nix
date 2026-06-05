# Remove libdecor dependency.
{
  flake.overlays.xwayland = (final: prev: {
    xwayland = prev.xwayland.overrideAttrs (oldAttrs: {
      mesonFlags = (oldAttrs.mesonFlags or []) ++ [
        "-Dlibdecor=false"
      ];
      buildInputs = builtins.filter (p: p != final.libdecor) oldAttrs.buildInputs;
    });
  });
}
