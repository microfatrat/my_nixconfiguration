# 其他 Linux 发行版的 Home Manager 入口（Ubuntu、Arch 等）
{ ... }:
{
  imports = [
    ../home/common.nix
    ../home/linux-only.nix
  ];
}
