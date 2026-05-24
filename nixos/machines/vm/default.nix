# Hyper-V VM configuration
{ config, ... }:
{
  imports = [
    ./hardware.nix
    ../../lib/desktop.nix
  ];

  networking.hostName = "nixos";

  system.stateVersion = "26.05";

  home-manager.users.mikro.imports = [
    ../../lib/home/desktop.nix
  ];
}
