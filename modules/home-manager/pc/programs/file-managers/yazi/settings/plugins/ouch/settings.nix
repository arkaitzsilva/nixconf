{
  flake.modules.homeManager.pc = {
    programs.yazi.settings = {
      plugin = {
        prepend_previewers = [
          { mime = "application/{*zip,tar,bzip2,7z*,rar,xz,zstd,java-archive}"; run = "ouch --archive-icon=' ' --show-file-icons"; }
        ];
      };

      opener = {
        extract = [
          { run = ''ouch d -y "$@"''; desc = "Extract here with ouch"; for = "unix"; }
        ];
      };
    };
  };
}
