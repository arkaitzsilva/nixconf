{
  configurations.nixos.M11xR3.module = {
    boot.loader.grub.devices = [ "/dev/sda" ];
  };
}
