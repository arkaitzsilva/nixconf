{
  flake.modules.nixos.firmware = { pkgs, ... }: {
    hardware.firmware = with pkgs; [
      linux-firmware
    ];
  };
}
