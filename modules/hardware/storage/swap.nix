{
  flake.modules.nixos.swap = { config, lib, ... }:  {
    options = {
      swap.size = lib.mkOption {
        type = lib.types.int;
        default = 4*1024;
      };
    };
    config = {
      swapDevices = [
        {
          device = "/.swapfile";
          size = config.swap.size;
        }
      ];
    };
  };
}
