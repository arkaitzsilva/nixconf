{
  perSystem = { pkgs, ... }: {
    packages.emule-qt = pkgs.stdenv.mkDerivation {
      pname = "emule-qt";
      version = "0.1.6";

      src = pkgs.fetchFromGitHub {
        owner = "ModderMule";
        repo = "emule-qt";
        rev = "v0.1.6";
        hash = "sha256-pgVCX4qVKH6OMXRbGzD0uG6kGudh7SALVZNjBr6lf1Q=";
      };

      nativeBuildInputs = with pkgs; [
        cmake
        qt6.wrapQtAppsHook
        qt6.qttools
      ];

      buildInputs = with pkgs; [
        qt6.qtbase
        qt6.qtmultimedia
        qt6.qthttpserver
        zlib
        openssl
        miniupnpc
        yaml-cpp
        libarchive
      ];

      cmakeFlags = [
        (pkgs.lib.cmakeBool "EMULE_BUILD_TESTS" false)
      ];

      installPhase = ''
        mkdir -p $out/bin
        cp src/daemon/emulecored $out/bin/
        cp src/gui/emuleqt $out/bin/
      '';

      meta = {
        description = "eMule P2P file sharing client — Qt 6 port";
        homepage = "https://emule-qt.org";
        license = pkgs.lib.licenses.gpl2Plus;
        platforms = pkgs.lib.platforms.linux;
        mainProgram = "emuleqt";
      };
    };
  };
}
