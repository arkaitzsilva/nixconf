{
  flake.modules.homeManager.pc = { pkgs, config, lib, ... }:
    let
      themeName = config.gtk.theme.name;
      themePackage = config.gtk.theme.package;

      generatedCss = config.scheme {
        template = builtins.readFile ./templates/gtk.css.mustache;
        extension = ".css";
      };
    in
    lib.mkIf (config.gtk.enable && config.services.flatpak.enable or false) {
      home.file.".themes/${themeName}".source = pkgs.stdenvNoCC.mkDerivation {
        name = "flattened-gtk-theme";
        src = "${themePackage}/share/themes/${themeName}";

        installPhase = ''
          cp --recursive . $out
          cat ${generatedCss} | tee --append $out/gtk-{3,4}.0/gtk.css
        '';
      };
    };
}
