{ config, lib, pkgs, modulesPath, ... }:

{
        environment.systemPackages = with pkgs; [
                aichat
                git
                neovim
                tmux
        ];

        networking.firewall = {
                enable = true;
                        allowedTCPPorts = [ 80 443 8000 ];
                        allowedUDPPortRanges = [
                                { from = 4000; to = 4007; }
                                { from = 8000; to = 8010; }
                        ];
        };

        systemd.network = {
                enable = true;
                networks."50-enp5s0" = {
                        matchConfig.Name = "enp5s0";
                        networkConfig = {
                                DHCP = "ipv4";
                                IPv6AcceptRA = true;
                        };
                        linkConfig.RequiredForOnline = "routable";
                };
        };
}
