{ config, lib, pkgs, modulesPath, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    neovim
    nodejs_22
  ]

}