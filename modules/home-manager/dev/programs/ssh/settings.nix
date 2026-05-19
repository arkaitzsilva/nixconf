{
  flake.modules.homeManager.base = {
    programs.ssh = {
      enableDefaultConfig = false;
      matchBlocks."*" = {
        addKeysToAgent = "yes";
      };
    };
  };
}
