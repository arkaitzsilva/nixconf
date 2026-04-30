{
  flake.modules.homeManager.base ={ config, ... }: {
    home.sessionVariables = {
      XDG_DESKTOP_DIR = "$HOME";
      XDG_DOWNLOAD_DIR = "$HOME/Descargas";
      XDG_DOCUMENTS_DIR = "$HOME/Documentos";

      EDITOR = "${config.editor.name}";
    };
  };
}
