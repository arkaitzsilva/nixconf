{ inputs, ... }: {
  flake.modules = {
    nixos.base = {
      imports = [
        inputs.base16.nixosModule
      ];
    };
    homeManager.base = {
      imports = [
        inputs.base16.homeManagerModule
      ];
    };
  };
}
