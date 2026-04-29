{ config, ... }: {
  flake.modules.homeManager.base = {
   programs.git = {
      enable = true;
      settings = {
        user = {
          name = config.flake.meta.owner.git.user.name;
          email = config.flake.meta.owner.git.user.email;
        };
      };
    };
  };
}
