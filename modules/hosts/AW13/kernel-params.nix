{
  configurations.nixos.AW13.module = {
    boot.kernelParams = [
      "intel_pstate=active"
      "i915.enable_psr=1"
      "i915.enable_fbc=1"
    ];
  };
}
