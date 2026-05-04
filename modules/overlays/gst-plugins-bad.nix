# Remove GTK dependency.
{
  flake.overlays.gst-plugins-bad = (final: prev: {
    gst_all_1 = prev.gst_all_1.overrideScope (gstFinal: gstPrev: {
      gst-plugins-bad = gstPrev.gst-plugins-bad.override {
        guiSupport = false;
      };
    });
  });
}
