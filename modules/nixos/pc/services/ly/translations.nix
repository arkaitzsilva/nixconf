{
  flake.modules.nixos.pc = { pkgs, ... }: {
    environment.etc = {
      "ly/lang".source = "${pkgs.ly}/etc/ly/lang";
    };
  };
}
