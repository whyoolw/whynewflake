{ ...
}: 
{
  services = {
    power-profiles-daemon.enable = false;
    auto-cpufreq = {
      enable = true;
      settings = {
        charger = {
          governor = "performance";
          scaling_min_freq = 2600000;
          scaling_max_freq = 4000000;
          turbo = "auto";
        };

        battery = {
          governor = "powersave";
          scaling_min_freq = 800000;
          scaling_max_freq = 1600000;
          turbo = "never";
        };
      };
    };
  };
}