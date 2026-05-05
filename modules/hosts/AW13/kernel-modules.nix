{
  configurations.nixos.AW13.module = {
    boot.kernelModules = [
      "dell_laptop"
    ];
  };
}
