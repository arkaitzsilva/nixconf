{
  configurations.nixos.AW13.module = {
    boot.kernelParams = [
      "intel_pstate=active"
      "i915.enable_psr=0"
    ];
  };
}
