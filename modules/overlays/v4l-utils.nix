# Remove gtk related dependencies
{
  flake.overlays = {
    v4l-utils = (final: prev: {
      v4l-utils = prev.v4l-utils.override {
        withGUI = false;
      };
    });
  };
}
