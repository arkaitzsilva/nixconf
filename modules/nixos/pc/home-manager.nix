{ config, ... }: {
  flake.modules.nixos.pc = {
    home-manager.users.${config.flake.meta.owner.username} = {
      imports = [
        config.flake.modules.homeManager.pc
        config.flake.modules.homeManager.dev
      ];
    };
  };
}
