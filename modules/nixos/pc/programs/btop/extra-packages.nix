{
  flake.modules.nixos.pc = { pkgs, ... }: {
    environment.systemPackages =  with pkgs; [
      intel-gpu-tools # Btop needs this system-wide package to show intel GPU data  
    ];
  };
}
