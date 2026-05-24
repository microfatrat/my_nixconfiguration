# NixOS 的 Home Manager 入口
{ ... }:
{
  imports = [
    ../home/common.nix
    ../home/linux-only.nix
  ];
}
