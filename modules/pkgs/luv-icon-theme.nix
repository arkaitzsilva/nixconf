{
  perSystem = { pkgs, ... }: {
    packages.luv-icon-theme = pkgs.stdenvNoCC.mkDerivation {
      pname = "luv-icon-theme";
      version = "1.0";

      src = pkgs.fetchFromGitHub {
        owner = "arkaitzsilva";
        repo = "luv-icon-theme";
        rev = "main";
        hash = "sha256-wMRBTZzGtH8SQMCq8E/HmKjRaxvH6CNurssPZ+/jbms=";
      };

      installPhase = ''
        mkdir -p $out/share/icons
        for theme in "Luv-Dark"; do
          cp -r $theme $out/share/icons
        done
      '';
    };
  };
}
