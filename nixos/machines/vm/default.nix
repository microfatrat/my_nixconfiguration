# Hyper-V 虚拟机配置
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
