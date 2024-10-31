{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
    # Desktop apps
    alacritty
    rofi

    # Coding stuff
    gnumake
    gcc
    neovim

    # CLI utils
    fastfetch
    file
    tree
    wget
    git
    htop
    nix-index
    unzip
    ranger
    zip
    yt-dlp
    lazygit

    # GUI utils
    feh
    dmenu

    # WMs and stuff
    i3status
    i3lock
    i3

    # Sound
    pipewire
    pulseaudio
    pamixer

    # Other
    home-manager
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
  ];
}
