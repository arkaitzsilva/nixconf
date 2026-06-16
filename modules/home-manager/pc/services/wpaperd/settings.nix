{
  flake.modules.homeManager.pc = { config, ... }: {
    services.wpaperd.settings = {
      any = {
        path = "${config.xdg.dataHome}/backgrounds/static_cell.png";
      };
    };
  };
}
