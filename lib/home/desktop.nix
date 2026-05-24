# Desktop Home Manager meta-module
# Import this in any platform's home.nix for graphical desktop configs
{ ... }:
{
  imports = [
    ../../home/config/niri.nix
    ../../home/config/yazi.nix
  ];
}
