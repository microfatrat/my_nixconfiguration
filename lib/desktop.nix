# Desktop environment meta-module
# Import this on any NixOS machine that needs a graphical desktop
{ ... }:
{
  imports = [
    ../nixos/modules/wayland.nix      # xdg portal
    # Add more desktop modules here:
    # ./fonts.nix
    # ./sound.nix
  ];
}
