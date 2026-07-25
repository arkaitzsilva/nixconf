{
  flake.modules.homeManager.pc = { pkgs, ... }: {
    programs.chromium.package = pkgs.ungoogled-chromium;
  };
}
