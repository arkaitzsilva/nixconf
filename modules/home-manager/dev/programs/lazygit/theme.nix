{
  flake.modules.homeManager.dev = { config, ... }: {
    programs.lazygit.settings.gui = with config.scheme.withHashtag; {
      theme = {
        activeBorderColor = [
          base0C
          "bold"
        ];
        inactiveBorderColor = [
          base03
        ];
        optionsTextColor = [
          base0C
        ];
        selectedLineBgColor = [
          base01
        ];
        cherryPickedCommitBgColor = [
          base02
        ];
        cherryPickedCommitFgColor = [
          base0D
        ];
        unstagedChangesColor = [
          base08
        ];
        defaultFgColor = [
          base05
        ];
        searchingActiveBorderColor = [
          base0A
        ];
      };
      authorColors = {
        "*" = base0E;
      };
    };
  };
}
