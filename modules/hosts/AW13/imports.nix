{ config, ... }: {
  configurations.nixos.AW13.module = with config.flake.modules.nixos; {
    imports = [
      efi
      firmware
      microcode
      filesystems
      swap
      pc
    ];
  };
}
