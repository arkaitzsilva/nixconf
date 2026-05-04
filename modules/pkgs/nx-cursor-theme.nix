{
  perSystem = { pkgs, ... }: {
    packages.nx-cursor-theme = pkgs.stdenvNoCC.mkDerivation {
      pname = "nx-cursor-theme";
      version = "1.0";

      src = pkgs.fetchFromGitHub {
        owner = "arkaitzsilva";
        repo = "nx-cursor-theme";
        rev = "main";
        hash = "sha256-oJpnezihdlybxcLus9jc/VEJuhoZ/FwQBUW85MlKtxY=";
      };

      installPhase = ''
        mkdir -p $out/share/icons
        for theme in "Nx" "Nx_Snow"; do
          cp -r $theme $out/share/icons
        done
      '';
    };
  };
}
