{ inputs, ... }: {
  flake.modules.homeManager.pc = {
    imports = [
      inputs.base16.homeManagerModule
    ];
  };
}
