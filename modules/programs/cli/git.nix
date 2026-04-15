{ config, ... }: {
  flake.modules.homeManager.base = {
    programs.git = {
      enable = true;
      settings = {
        user = {
          email = config.flake.meta.owner.accounts.github.email;
          name = config.flake.meta.owner.accounts.github.name;
        };
      };
    };
  };
}
