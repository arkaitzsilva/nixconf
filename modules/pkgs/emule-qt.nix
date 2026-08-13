{
  perSystem = { pkgs, ... }: {
    packages.emule-qt = pkgs.stdenv.mkDerivation {
      pname = "emule-qt";
      version = "0.2.0";

      src = pkgs.fetchFromGitHub {
        owner = "ModderMule";
        repo = "emule-qt";
        rev = "v0.2.0";
        hash = "sha256-os3aHNIYDBdJJ/93I0GER72RxKHtAUXVmexycs87uoo=";
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
        mkdir -p $out/bin $out/bin/lang \
                 $out/share/applications \
                 $out/share/icons/hicolor/256x256/apps

        cp src/daemon/emulecored $out/bin/
        cp src/gui/emuleqt $out/bin/

        cp src/gui/emuleqt_*.qm $out/bin/lang/

        cat > $out/share/applications/emuleqt.desktop <<DESKTOP
        [Desktop Entry]
        Type=Application
        Name=eMule Qt
        GenericName=P2P File Sharing Client
        Comment=eMule P2P file sharing client
        Exec=$out/bin/emuleqt
        Icon=emuleqt
        Terminal=false
        Categories=Network;P2P;FileTransfer;
        MimeType=x-scheme-handler/ed2k;
        StartupNotify=true
        StartupWMClass=GUI
        DESKTOP

        if [ -f resources/icons/emuleqt.png ]; then
          cp resources/icons/emuleqt.png \
            $out/share/icons/hicolor/256x256/apps/emuleqt.png
        fi
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
