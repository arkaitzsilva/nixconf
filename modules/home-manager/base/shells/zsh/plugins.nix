{
  flake.modules.homeManager.base = { pkgs, ... }:
  let
    ohMyZshPlugin = name: {
      inherit name;
      src = pkgs.fetchFromGitHub {
        owner = "ohmyzsh";
        repo = "ohmyzsh";
        rev = "master";
        hash = "sha256-A6HKwOEyd4jjbWbE5HjCVX9KgfG/jEHi7keSP5Ye/lg=";
      };
      file = "plugins/${name}/${name}.plugin.zsh";
    };
  in {
    programs.zsh.plugins = [
      {
        name = "fzf-tab";
        src = pkgs.zsh-fzf-tab;
        file = "share/fzf-tab/fzf-tab.plugin.zsh";
      }
      (ohMyZshPlugin "git")
    ];
  };
}
