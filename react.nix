{ config, lib, pkgs, modulesPath, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    neovim
    tmux
    nodejs_22
  ];

  systemd.user.services.init = {
    description = "...";
    serviceConfig.PassEnvironment = "DISPLAY";
    script = './init.sh'
    wantedBy = [ "multi-user.target" ]; # starts after login
  };
}
