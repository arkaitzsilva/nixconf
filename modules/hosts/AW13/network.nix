{
  configurations.nixos.AW13.module = {
    networking.firewall = {
      allowedTCPPorts = [ 61616 ];
      allowedUDPPorts = [ 61619 ];
    };
  };
}
