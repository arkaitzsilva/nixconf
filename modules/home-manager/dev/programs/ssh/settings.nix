{
  flake.modules.homeManager.dev = {
    programs.ssh = {
      enableDefaultConfig = false;
      settings."*" = {
        AddKeysToAgent = "yes";
      };
    };
  };
}
