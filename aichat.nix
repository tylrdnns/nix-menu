{ config, lib, pkgs, modulesPath, ... }:

{
        environment.systemPackages = with pkgs; [
                aichat
                git
                neovim
                tmux
        ];
}
