{

  imports = [
    ./zsh.nix
    ./modules/bundle.nix
  ];

  home = {
    username = "bocchi";
    homeDirectory = "/home/bocchi";
    stateVersion = "24.05";
  };
}
