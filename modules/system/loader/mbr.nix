{ config, ... }: {
  flake.modules.nixos.mbr = {
    boot.loader.grub = {
      enable = true;
      devices = [ "/dev/${config.flake.meta.boot.device}" ];
      efiSupport = false;
    };
  };
}
