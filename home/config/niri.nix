# Niri compositor configuration
{ pkgs, ... }:
{
  home.packages = with pkgs; [
    niri
    xwayland-satellite
    matugen
    cava
    mako
    nemo
    fuzzel
    wl-clipboard
    qt6.qtmultimedia
  ];

  programs.alacritty = {
    enable = true;
    settings = {
      window.opacity = 0.95;
      font.normal.family = "FiraMono Nerd Font";
    };
  };

  xdg.configFile."niri/config.kdl".text = ''
    // https://github.com/YaLTeR/niri/wiki/Configuration:-Overview

    input {
        keyboard {
            xkb {
                layout "us"
            }
        }

        touch {
            off
        }

        mouse {
            // on
        }
    }

    // Layout
    binds {
        // Leave empty — use niri defaults
    }
  '';
}
