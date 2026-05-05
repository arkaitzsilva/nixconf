{
  flake.modules.homeManager.dev = { pkgs, ... }: {
    home.packages = with pkgs; [
      python3
      uv
      ruff
      ty
    ];
  };
}
