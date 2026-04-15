{ config, ... }: {
  flake = {
    meta.owner = {
      username = "alienware";
      accounts = {
        github = {
          name = "Arkaitz Silva";
          email = "arkaitz.develop@gmail.com";
        };
      };
    };

    modules.nixos.base = {
      users.users.${config.flake.meta.owner.username} = {
        isNormalUser = true;
        initialPassword = config.flake.meta.owner.username;
        extraGroups = [ "wheel" "networkmanager" ];
      };
    };
  };
}
