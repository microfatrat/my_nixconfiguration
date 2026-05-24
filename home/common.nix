# 跨平台用户共享配置（Home Manager）
# NixOS、macOS、其他 Linux 发行版通用
{ ... }:
{
  imports = [
    ./config/git.nix
    ./config/zsh.nix
    ./config/neovim.nix
  ];
}
