{
  perSystem = { pkgs, ... }: {
    packages.brave = let
      runtimeDeps = with pkgs; [
        alsa-lib
        at-spi2-atk
        at-spi2-core
        atk
        cairo
        cups
        dbus
        expat
        fontconfig
        freetype
        gdk-pixbuf
        glib
        gtk3
        libdrm
        libx11
        libGL
        libxkbcommon
        libxscrnsaver
        libxcomposite
        libxcursor
        libxdamage
        libxext
        libxfixes
        libxi
        libxrandr
        libxrender
        libxtst
        libgbm
        nspr
        nss
        pango
        pipewire
        udev
        wayland
        libxcb
        zlib
        snappy
        libpulseaudio
        libva
      ];

      rpath = pkgs.lib.makeLibraryPath runtimeDeps + ":" + pkgs.lib.makeSearchPathOutput "lib" "lib64" runtimeDeps;
      binpath = pkgs.lib.makeBinPath runtimeDeps;
    in
    pkgs.stdenv.mkDerivation rec {
      pname = "brave-browser";
      version = "1.89.145";

      src = pkgs.fetchurl {
        url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
        sha256 = "18nnzyzakhpi5vnypn6nz6bzd8fig33z5i6pdxzpg09nxqvrgcxp";
      };

      dontConfigure = true;
      dontBuild = true;
      dontPatchELF = true;
      doInstallCheck = pkgs.stdenv.isLinux;

      nativeBuildInputs = with pkgs.buildPackages; [
        dpkg
        wrapGAppsHook3
      ];

      buildInputs = with pkgs; [
        glib
        gsettings-desktop-schemas
        gtk3
        adwaita-icon-theme
      ];

      installPhase = ''
        runHook preInstall

        mkdir -p $out $out/bin

        cp -R usr/share $out
        cp -R opt/ $out/opt

        export BINARYWRAPPER=$out/opt/brave.com/brave/brave-browser

        substituteInPlace $BINARYWRAPPER \
            --replace-fail /bin/bash ${pkgs.stdenv.shell} \
            --replace-fail 'CHROME_WRAPPER' 'WRAPPER'

        ln -sf $BINARYWRAPPER $out/bin/brave

        for exe in $out/opt/brave.com/brave/{brave,chrome_crashpad_handler}; do
            patchelf \
                --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" \
                --set-rpath "${rpath}" "$exe"
        done

        substituteInPlace $out/share/applications/{brave-browser,com.brave.Browser}.desktop \
            --replace-fail /usr/bin/brave-browser-stable $out/bin/brave
        substituteInPlace $out/share/gnome-control-center/default-apps/brave-browser.xml \
            --replace-fail /opt/brave.com $out/opt/brave.com
        substituteInPlace $out/opt/brave.com/brave/default-app-block \
            --replace-fail /opt/brave.com $out/opt/brave.com

        icon_sizes=("16" "24" "32" "48" "64" "128" "256")

        for icon in "''${icon_sizes[@]}"; do
            mkdir -p $out/share/icons/hicolor/$icon\x$icon/apps
            ln -s $out/opt/brave.com/brave/product_logo_$icon.png $out/share/icons/hicolor/$icon\x$icon/apps/brave-browser.png
        done

        ln -sf ${pkgs.xdg-utils}/bin/xdg-settings $out/opt/brave.com/brave/xdg-settings
        ln -sf ${pkgs.xdg-utils}/bin/xdg-mime $out/opt/brave.com/brave/xdg-mime

        runHook postInstall
      '';

      preFixup = ''
        gappsWrapperArgs+=(
          --prefix LD_LIBRARY_PATH : ${rpath}
          --prefix PATH : ${binpath}
          --suffix PATH : ${
            pkgs.lib.makeBinPath [
              pkgs.xdg-utils
              pkgs.coreutils
            ]
          }
          --set CHROME_WRAPPER ${pname}
          --add-flags "--enable-features=${
            pkgs.lib.concatStringsSep "," [
              "AcceleratedVideoDecodeLinuxGL"
              "AcceleratedVideoEncoder"
            ]
          }\''${NIXOS_OZONE_WL:+\''${WAYLAND_DISPLAY:+,WaylandWindowDecorations --enable-wayland-ime=true}}"
          --add-flags "--disable-features=${
            pkgs.lib.concatStringsSep "," [
              "OutdatedBuildDetector"
              "UseChromeOSDirectVideoDecoder"
            ]
          }"
          --add-flags "\''${NIXOS_OZONE_WL:+\''${WAYLAND_DISPLAY:+--ozone-platform-hint=auto}}"
        )
      '';

      installCheckPhase = ''$out/opt/brave.com/brave/brave --version'';

      meta = {
        homepage = "https://brave.com/";
        description = "Privacy-oriented browser for Desktop and Laptop computers";
        license = pkgs.lib.licenses.mpl20;
        platforms = [ "aarch64-linux" "x86_64-linux" ];
        mainProgram = "brave";
      };
    };
  };
}
