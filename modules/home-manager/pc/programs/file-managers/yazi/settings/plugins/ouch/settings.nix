{
  flake.modules.homeManager.pc = {
    programs.yazi.settings = {
      plugin = {
        prepend_previewers = [
          { mime = "application/{vnd.rar,x-rar,x-rar-compressed,rar}"; run = "archive"; }
          { mime = "application/{*zip,tar,bzip2,7z*,xz,zstd,java-archive}"; run = "ouch --archive-icon=' ' --show-file-icons"; }
        ];
      };

      opener = {
        extract = [
          { run = ''ouch d -y "$@"''; desc = "Extract here with ouch"; for = "unix"; }
        ];
        "extract-rar" = [
          { run = ''7zz x -y "$@"''; desc = "Extract here with 7-Zip"; for = "unix"; }
        ];
      };

      open = {
        prepend_rules = [
          { mime = "application/{vnd.rar,x-rar,x-rar-compressed,rar}"; use = [ "extract-rar" "reveal" ]; }
        ];
      };
    };
  };
}
