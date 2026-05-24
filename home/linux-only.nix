# Linux-specific Home Manager configuration
{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # Linux-only tools
  ];
}
