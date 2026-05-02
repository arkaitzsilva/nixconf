{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    home.packages = with pkgs; [
      nixd # nix language server
    ];
  };
}
