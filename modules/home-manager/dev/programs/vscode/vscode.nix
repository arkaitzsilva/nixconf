{
  nixpkgs.config.allowUnfreePackages = [
    "vscode"
  ];

  flake.modules.homeManager.dev = { config, ... }: {
    programs.vscode.enable = config.gtk.enable;
  };
}
