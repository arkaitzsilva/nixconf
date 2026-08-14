{
  flake.modules = {
    nixos.base = {
      imports = [
        ./options.nix
      ];
    };
    homeManager.base = {
      imports = [
        ./options.nix
      ];
    };
  };
}
