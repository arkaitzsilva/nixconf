{ inputs, config, ... }: {
  flake.modules.nixos = {
    base = {
      imports = [ inputs.home-manager.nixosModules.home-manager ];

      home-manager = {
        backupFileExtension = "backup";
        useGlobalPkgs = true;
        useUserPackages = true;
        extraSpecialArgs.hasGlobalPkgs = true;

        users.${config.flake.meta.owner.username} = {
          imports = [
            ({ osConfig, ... }: {
              home.stateVersion = osConfig.system.stateVersion;
            })
            config.flake.modules.homeManager.base
            config.flake.modules.homeManager.dev
          ];
        };
      };
    };
    pc = {
      home-manager.users.${config.flake.meta.owner.username} = {
        imports = [
          config.flake.modules.homeManager.pc
        ];
      };
    };
  };
}
