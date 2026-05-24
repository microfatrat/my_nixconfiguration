# NixOS Home Manager entry point
{ ... }:
{
  imports = [
    ../home/common.nix
    ../home/linux-only.nix
  ];
}
