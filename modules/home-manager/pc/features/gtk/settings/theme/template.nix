{
  flake.modules.homeManager.pc = { lib, config, ... }: lib.mkIf config.gtk.enable {
    xdg.configFile."gtk-3.0/gtk.css".source = config.scheme {
      template = builtins.readFile ./templates/gtk.css.mustache;
      extension = ".css";
    };
  };
}
