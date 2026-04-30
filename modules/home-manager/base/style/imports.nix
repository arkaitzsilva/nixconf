{ inputs, ... }: {
  flake.modules.homeManager.base = {
    imports = [
      inputs.base16.homeManagerModule
    ];
  };
}
