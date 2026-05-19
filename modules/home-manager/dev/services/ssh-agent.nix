{
  flake.modules.homeManager.dev = {
    services.ssh-agent = {
      enable = true;
    };
  };
}
