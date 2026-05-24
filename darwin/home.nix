# macOS Home Manager entry point
{ ... }:
{
  imports = [
    ../home/common.nix
    ../home/darwin-only.nix
  ];
}
