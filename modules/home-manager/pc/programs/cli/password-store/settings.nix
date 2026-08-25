{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.password-store.settings = {
      PASSWORD_STORE_DIR = "${config.xdg.dataHome}/password-store";
      PASSWORD_STORE_KEY = "BE732CB4F294D07C";
      PASSWORD_STORE_CLIP_TIME = "60";
    };
  };
}
