{
  flake.modules.homeManager.pc = { pkgs, config, lib, ... }:
    let
      themeName = config.gtk.theme.name;
      themePackage = config.gtk.theme.package;

      gtk3Css = config.scheme {
        template = builtins.readFile ./templates/gtk3.css.mustache;
        extension = ".css";
      };

      gtk4Css = config.scheme {
        template = builtins.readFile ./templates/gtk4.css.mustache;
        extension = ".css";
      };
    in
    lib.mkIf (config.gtk.enable && config.services.flatpak.enable or false) {
      xdg.dataFile."themes/${themeName}".source = pkgs.stdenvNoCC.mkDerivation {
        name = "flattened-gtk-theme";
        src = "${themePackage}/share/themes/${themeName}";
        installPhase = ''
          cp --recursive . $out
          cat ${gtk3Css} >> $out/gtk-3.0/gtk.css
          cat ${gtk4Css} >> $out/gtk-4.0/gtk.css
        '';
      };
    };
}
