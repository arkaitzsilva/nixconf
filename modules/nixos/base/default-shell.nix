{
  flake.modules.nixos.base = { pkgs, ... }: {
    programs.fish.enable = true;
    users.defaultUserShell = pkgs.fish;
  };
}
