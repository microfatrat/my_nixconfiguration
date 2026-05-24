# Home Manager entry for other Linux distributions (Ubuntu, Arch, etc.)
{ ... }:
{
  imports = [
    ../home/common.nix
    ../home/linux-only.nix
  ];
}
