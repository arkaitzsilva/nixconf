{
  flake.modules.homeManager.dev = {
    programs.ssh = {
      enableDefaultConfig = false;
      matchBlocks."*" = {
        addKeysToAgent = "yes";
      };
    };
  };
}
