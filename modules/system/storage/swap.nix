{
  flake.modules.nixos.swap = {
    swapDevices = [
      {
        device = "/.swapfile";
        size = 16*1024;
      }
    ];
  };
}
