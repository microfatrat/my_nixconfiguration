# Cross-platform Home Manager configuration
# Shared across NixOS, macOS, and other Linux distributions
{ ... }:
{
  imports = [
    ./config/git.nix
    ./config/zsh.nix
    ./config/neovim.nix
  ];
}
