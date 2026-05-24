# macOS-specific Home Manager configuration
{ pkgs, ... }:
{
  imports = [
    ../config/yazi.nix
  ];

  home.packages = with pkgs; [
    # macOS-only tools
  ];
}
