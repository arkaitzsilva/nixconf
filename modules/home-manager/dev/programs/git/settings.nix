{ config, ... }: {
  flake.modules.homeManager.dev = {
   programs.git.settings = {
      user = {
        name = config.flake.meta.owner.git.user.name;
        email = config.flake.meta.owner.git.user.email;
      };
    };
  };
}
