{ config, lib, ... }: {
  flake.modules.nixos.mbr = {
    options = {
      boot.loader.grub.devices = lib.mkOption {
        type = lib.listOf lib.singleLineStr;
        default = [ "/dev/sda" ];
        example = lib.literalExpression ''[
          "/dev/sda"
          "/dev/sdb"
        ]'';
        description = "List of devices to install GRUB in MBR.";
      };
    };
    config = {
      boot.loader.grub = {
        enable = true;
        devices = config.boot.loader.grub.devices;
        efiSupport = false;
      };
    };
  };
}
