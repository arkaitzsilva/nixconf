{
  flake.modules.homeManager.pc = { osConfig, pkgs, ... }: {
    programs.firefox.package =
      if osConfig.hardware.nvidia.prime.offload.enable or false then
        pkgs.firefox.overrideAttrs (old: {
          makeWrapperArgs = (old.makeWrapperArgs or [ ]) ++ [
            "--set" "__NV_PRIME_RENDER_OFFLOAD" "1"
            "--set" "__GLX_VENDOR_LIBRARY_NAME" "nvidia"
          ];
        })
      else pkgs.firefox;
  };
}
