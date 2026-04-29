{ config, ... }: {
  configurations.nixos.M11xR3.module = with config.flake.modules.nixos; {
    imports = [
      mbr
      filesystems
      swap
      pc
    ];
  };
}
