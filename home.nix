{ config, pkgs, ... }:

{
  home = {
    username = "valmar";
    homeDirectory = "/var/home/valmar";
    stateVersion = "23.11";
    packages = [
        pkgs.flac
        pkgs.rclone
    ];
  };

  programs.home-manager = {
    enable = true;
  };
}
