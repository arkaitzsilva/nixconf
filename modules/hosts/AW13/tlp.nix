{
  configurations.nixos.AW13.module = {
    services.tlp.settings = {
      CPU_SCALING_GOVERNOR_ON_AC  = "performance";
      CPU_SCALING_GOVERNOR_ON_BAT = "powersave";

      CPU_ENERGY_PERF_POLICY_ON_AC  = "performance";
      CPU_ENERGY_PERF_POLICY_ON_BAT = "balance_performance";

      CPU_MIN_PERF_ON_AC  = 0;
      CPU_MAX_PERF_ON_AC  = 100;
      CPU_MIN_PERF_ON_BAT = 0;
      CPU_MAX_PERF_ON_BAT = 85;

      CPU_BOOST_ON_AC  = 1;
      CPU_BOOST_ON_BAT = 0;

      INTEL_GPU_MIN_FREQ_ON_AC   = 300;
      INTEL_GPU_MAX_FREQ_ON_AC   = 950;
      INTEL_GPU_BOOST_FREQ_ON_AC = 950;

      INTEL_GPU_MIN_FREQ_ON_BAT   = 300;
      INTEL_GPU_MAX_FREQ_ON_BAT   = 750;
      INTEL_GPU_BOOST_FREQ_ON_BAT = 850;

      PCIE_ASPM_ON_AC  = "default";
      PCIE_ASPM_ON_BAT = "powersupersave";

      WIFI_PWR_ON_AC  = "off";
      WIFI_PWR_ON_BAT = "on";

      RUNTIME_PM_ON_AC  = "on";
      RUNTIME_PM_ON_BAT = "on";
    };
  };
}
