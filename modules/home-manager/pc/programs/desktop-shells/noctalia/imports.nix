{ inputs, ... }: {
  flake.modules.homeManager.pc = {
    imports = [
      inputs.noctalia.homeModules.default
    ];
  };
}
