{ config, lib, pkgs, modulesPath, ... }:

{
  users.users = {
    tyler = {
      isNormalUser = true;
      extraGroups = [ "wheel" "networkmanager" ];

      # Add other user-specific configurations here
      packages = with pkgs; [
        aichat
      ];
    };
  };
}
