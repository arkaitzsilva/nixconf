{
  flake.modules.homeManager.base = { pkgs, ... }: {
    xdg = {
      mime.enable = true;
      mimeApps.enable = true;
    };

    home.packages = with pkgs; [
      xdg-utils
    ];
  };
}
