# Neovim user configuration
# Package installed at system level via nixos/common.nix
{ ... }:
{
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
  };
}
