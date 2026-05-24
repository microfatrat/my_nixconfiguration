# macOS 专有 Home Manager 配置
{ pkgs, ... }:
{
  imports = [
    ../config/yazi.nix
  ];

  home.packages = with pkgs; [
    # macOS 独有工具
  ];
}
