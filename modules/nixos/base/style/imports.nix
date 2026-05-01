{ inputs, ... }: {
  flake.modules.nixos.base = {
    imports = [
      inputs.base16.nixosModule
    ];
  };
}
