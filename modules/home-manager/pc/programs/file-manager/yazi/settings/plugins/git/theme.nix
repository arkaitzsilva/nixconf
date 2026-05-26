{
  flake.modules.homeManager.pc = { config, ... }: {
    programs.yazi.theme."git" = with config.scheme.withHashtag;{
      unknown_sign  = "?";
      modified_sign = "M";
      added_sign = "A";
      untracked_sign = "?";
      ignored_sign = "I";
      deleted_sign = "!";
      updated_sign = "U";

      unknown = { fg = base03; };
      modified = { fg = base0A; };
      added = { fg = base0B; };
      untracked = { fg = base04; };
      ignored = { fg = base03; };
      deleted = { fg = base08; bold = true; };
      updated = { fg = base0E; };
    };
  };
}
