# To use btop as non-root user & detect GPU
{
  flake.modules.nixos.pc = { pkgs, ... }: {
    security.wrappers.btop = {
      owner = "root";
      group = "root";
      capabilities = "cap_sys_admin+ep";
      source = "${pkgs.btop}/bin/btop";
    };
  };
}
