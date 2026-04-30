{ inputs, ... }: {
  flake.modules.homeManager.pc = {
    imports = [
      inputs.declarative-flatpak.homeModules.default
    ];
  };
}
