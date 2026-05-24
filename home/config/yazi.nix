# Yazi configuration
{ pkgs, ... }:
{
  programs.yazi = {
    enable = true;

    settings = {
      mgr = {
        ratio = [ 1 4 3 ];
        sort_dir_first = true;
        scrolloff = 5;
        mouse_events = [ "click" "scroll" ];
      };
    };

    theme = {
      manager = {
        cwd = { fg = "#81c8be"; };
        find_keyword = { fg = "yellow"; bold = true; italic = true; underline = true; };
        find_position = { fg = "#c4a0d4"; bg = "reset"; bold = true; italic = true; };
        symlink_target = { italic = true; };
        marker_copied = { fg = "lightgreen"; bg = "lightgreen"; };
        marker_cut = { fg = "lightred"; bg = "lightred"; };
        marker_marked = { fg = "#94e2d5"; bg = "#94e2d5"; };
        marker_selected = { fg = "lightyellow"; bg = "lightyellow"; };
        marker_symbol = "│";
        count_copied = { fg = "white"; bg = "green"; };
        count_cut = { fg = "white"; bg = "red"; };
        count_selected = { fg = "black"; bg = "yellow"; };
        border_symbol = "│";
        border_style = { fg = "gray"; };
        syntect_theme = "";
      };

      tabs = {
        active = { bg = "#7da6d9"; bold = true; };
        inactive = { fg = "#7da6d9"; bg = "gray"; };
        sep_inner = { open = ""; close = ""; };
        sep_outer = { open = ""; close = ""; };
      };

      mode = {
        normal_main = { bg = "#7da6d9"; bold = true; };
        normal_alt = { fg = "#7da6d9"; bg = "gray"; };
        select_main = { bg = "red"; bold = true; };
        select_alt = { fg = "red"; bg = "gray"; };
        unset_main = { bg = "red"; bold = true; };
        unset_alt = { fg = "red"; bg = "gray"; };
      };

      indicator = {
        parent = { reversed = true; };
        current = { reversed = true; };
        preview = { underline = true; };
        padding = { open = ""; close = ""; };
      };

      status = {
        overall = {};
        sep_left = { open = ""; close = ""; };
        sep_right = { open = ""; close = ""; };
        perm_sep = { fg = "darkgray"; };
        perm_type = { fg = "green"; };
        perm_read = { fg = "yellow"; };
        perm_write = { fg = "red"; };
        perm_exec = { fg = "#81c8be"; };
        progress_label = { bold = true; };
        progress_normal = { fg = "green"; bg = "black"; };
        progress_error = { fg = "yellow"; bg = "red"; };
      };

      which = {
        cols = 3;
        mask = { bg = "black"; };
        cand = { fg = "#94e2d5"; };
        rest = { fg = "darkgray"; };
        desc = { fg = "#cba6f7"; };
        separator = "  ";
        separator_style = { fg = "darkgray"; };
      };

      confirm = {
        border = { fg = "#7da6d9"; };
        title = { fg = "#7da6d9"; };
        body = {};
        list = {};
        btn_yes = { reversed = true; };
        btn_no = {};
        btn_labels = [ "  [Y]es  " "  (N)o  " ];
      };

      spot = {
        border = { fg = "#7da6d9"; };
        title = { fg = "#7da6d9"; };
        tbl_col = { fg = "#7da6d9"; };
        tbl_cell = { fg = "yellow"; reversed = true; };
      };

      notify = {
        title_info = { fg = "green"; };
        title_warn = { fg = "yellow"; };
        title_error = { fg = "red"; };
        icon_info = "";
        icon_warn = "";
        icon_error = "";
      };

      pick = {
        border = { fg = "#7da6d9"; };
        active = { fg = "#c4a0d4"; bold = true; };
        inactive = {};
      };

      input = {
        border = { fg = "#7da6d9"; };
        title = {};
        value = {};
        selected = { reversed = true; };
      };

      cmp = {
        border = { fg = "#7da6d9"; };
        active = { reversed = true; };
        inactive = {};
        icon_file = "";
        icon_folder = "";
        icon_command = "";
      };

      tasks = {
        border = { fg = "#7da6d9"; };
        title = {};
        hovered = { fg = "#c4a0d4"; bold = true; };
      };

      help = {
        on = { fg = "#81c8be"; };
        run = { fg = "#c4a0d4"; };
        desc = {};
        hovered = { reversed = true; bold = true; };
        footer = { fg = "black"; bg = "white"; };
      };

      filetype = {
        rules = [
          { mime = "image/*"; fg = "yellow"; }
          { mime = "{audio,video}/*"; fg = "#c4a0d4"; }
          { mime = "application/{zip,rar,7z*,tar,gzip,xz,zstd,bzip*,lzma,compress,archive,cpio,arj,xar,ms-cab*}"; fg = "red"; }
          { mime = "application/{pdf,doc,rtf}"; fg = "#81c8be"; }
          { mime = "vfs/{absent,stale}"; fg = "gray"; }
          { url = "*"; is = "orphan"; bg = "red"; }
          { url = "*"; is = "exec"; fg = "green"; }
          { url = "*"; is = "dummy"; bg = "red"; }
          { url = "*/"; is = "dummy"; bg = "red"; }
          { url = "*/"; fg = "#7da6d9"; }
        ];
      };

      icon = {
        prepend_dirs = [
          { name = ".config"; text = ""; fg = "#ff9800"; }
          { name = ".git"; text = ""; fg = "#7da6d9"; }
          { name = ".github"; text = ""; fg = "#7da6d9"; }
          { name = "Desktop"; text = ""; fg = "#7da6d9"; }
          { name = "Documents"; text = ""; fg = "#7da6d9"; }
          { name = "Downloads"; text = ""; fg = "#7da6d9"; }
          { name = "Music"; text = ""; fg = "#7da6d9"; }
          { name = "Pictures"; text = ""; fg = "#7da6d9"; }
          { name = "Public"; text = ""; fg = "#7da6d9"; }
          { name = "Videos"; text = ""; fg = "#7da6d9"; }
        ];
        prepend_conds = [
          { if = "dir & hovered"; text = ""; fg = "#7da6d9"; }
          { if = "dir"; text = ""; fg = "#7da6d9"; }
          { if = "exec"; text = ""; fg = "#81c8be"; }
        ];
      };
    };
  };

  home.packages = with pkgs; [
    file
    fd
    ffmpeg
    p7zip
    jq
    poppler
    ripgrep
    imagemagick
    resvg
    (nerd-fonts.fira-mono.override { fonts = [ "FiraMono" ]; })
  ];

  programs.fzf.enable = true;
  programs.zoxide.enable = true;
}
