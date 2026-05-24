# macOS 的 Home Manager 入口
{ ... }:
{
  imports = [
    ../home/common.nix
    ../home/darwin-only.nix
  ];
}
