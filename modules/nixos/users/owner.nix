{ config, ... }: {
  flake = {
    meta.owner = {
      name = "Alienware";
      username = "alienware";
      git.user = {
        name = "arkaitzsilva";
        email = "arkaitz.develop@gmail.com";
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
