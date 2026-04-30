{
  flake.modules.homeManager.base ={ config, ... }: {
    home.sessionVariables = {
      EDITOR = "${config.editor.name}";
    };
  };
}
