{
  perSystem = { pkgs, ... }: {
    packages.luv-icon-theme = pkgs.stdenvNoCC.mkDerivation {
      pname = "luv-icon-theme";
      version = "1.0";

      src = pkgs.fetchFromGitHub {
        owner = "arkaitzsilva";
        repo = "luv-icon-theme";
        rev = "main";
        hash = "sha256-AAsyDwx2YBCsf1ZDnvkZEsGaSq+ag/GmyCHYNKMy/BQ=";
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
