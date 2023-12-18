{ config, pkgs, ... }:

{
  home = {
    username = "valmar";
    homeDirectory = "/var/home/valmar";
    stateVersion = "23.11";
    packages = [
        pkgs.flac
        pkgs.neovim
        pkgs.rclone
        (pkgs.python3.withPackages (p: with p; [ mutagen ]))
    ];
  };

  programs.home-manager = {
    enable = true;
  };
}
