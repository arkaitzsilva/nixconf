{
  flake.modules.nixos.base = {
    console = {
      earlySetup = true;
      keyMap = "es";
    };
  };
}
