{ config, lib, pkgs, modulesPath, ... }:

{
        environment.systemPackages = with pkgs; [
                nginx
                keycloak
                git
                neovim
                tmux
        ];
}
