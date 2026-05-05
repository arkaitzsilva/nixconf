{ inputs, ... }: {
  flake.modules = {
    nixos.style = {
      imports = [
        inputs.base16.nixosModule
      ];
    };
    homeManager.style = {
      imports = [
        inputs.base16.homeManagerModule
      ];
    };
  };
}
