{ config, pkgs, ... }:

{
  home = {
    username = "valmar";
    homeDirectory = "/var/home/valmar";
    stateVersion = "23.11";
    packages = [
        pkgs.flac
        pkgs.hashdeep
        pkgs.neovim
        pkgs.rclone
        pkgs.unzip
        pkgs.zip
        (pkgs.python3.withPackages (p: with p; [ mutagen ]))
    ];
  };

  programs.home-manager = {
    enable = true;
  };
}
