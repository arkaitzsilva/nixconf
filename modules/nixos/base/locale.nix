{
  flake.modules.nixos.base = {
    i18n = let
      es_ES = "es_ES.UTF-8";
    in {
      defaultLocale = es_ES;
      extraLocaleSettings =  {
        LC_ADDRESS = es_ES;
        LC_IDENTIFICATION = es_ES;
        LC_MEASUREMENT = es_ES;
        LC_MONETARY = es_ES;
        LC_NAME = es_ES;
        LC_NUMERIC = es_ES;
        LC_PAPER = es_ES;
        LC_TELEPHONE = es_ES;
        LC_TIME = es_ES;
      };
    };
  };
}
