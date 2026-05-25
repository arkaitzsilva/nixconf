{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.superfile.settings = {
      metadata = false;
      enable_md5_checksum = false;
      zoxide_support = config.programs.zoxide.enable;
    };
  };
}
