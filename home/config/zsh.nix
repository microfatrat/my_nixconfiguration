# Zsh user configuration
{ config, pkgs, ... }:
{
  programs.zsh = {
    enable = true;

    # ── History ──────────────────────────────────────────────────────────
    history = {
      size = 10000;
      save = 10000;
      path = "${config.home.homeDirectory}/.zsh_history";
      ignoreDups = true;
      share = true;
      ignoreAllDups = false;
      expireDuplicatesFirst = false;
    };

    # ── Options ──────────────────────────────────────────────────────────
    autocd = true;
    defaultKeymap = "emacs";

    # ── Completion ───────────────────────────────────────────────────────
    completionInit = ''
      autoload -Uz compinit
      compinit -C
      zstyle ':completion:*' use-cache on
      zstyle ':completion:*' cache-path ~/.zcompcache
      zstyle ':completion:*' menu select
      zstyle ':completion:*' list-colors ''${(s.:.)LS_COLORS}
      zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
    '';

    # ── Plugins ──────────────────────────────────────────────────────────
    plugins = with pkgs; [
      zsh-fast-syntax-highlighting
      zsh-autosuggestions
    ];

    # ── Shell aliases ────────────────────────────────────────────────────
    shellAliases = {
      ll = "ls -alF";
      la = "ls -A";
      l = "ls -CF";
      grep = "grep --color=auto";
      cp = "cp -iv";
      mv = "mv -iv";
      rm = "rm -i";
      mkdir = "mkdir -p";
      ".." = "cd ..";
      "..." = "cd ../..";
      "-" = "cd -";
      d = "dirs -v";
    };

    # ── Extra init (OS-dependent aliases, bindkeys, prompt) ──────────────
    initExtra = ''
      # Colorized ls depending on OS
      if [[ "$OSTYPE" == linux-gnu* ]]; then
        alias ls='ls --color=auto'
      elif [[ "$OSTYPE" == darwin* ]]; then
        alias ls='ls -G'
      fi

      # Key bindings
      bindkey '^[[H' beginning-of-line
      bindkey '^[[F' end-of-line
      bindkey '^[[3~' delete-char
      bindkey '^[[1;5C' forward-word
      bindkey '^[[1;5D' backward-word
      bindkey '^R' history-incremental-search-backward

      # Prompt
      PROMPT='%F{cyan}%n@%m%f %F{green}%~%f %F{yellow}%#%f '
      RPROMPT='%F{magenta}%T%f'
    '';
  };
}
