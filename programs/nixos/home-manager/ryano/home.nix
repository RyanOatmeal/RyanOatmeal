{ config, pkgs, ... }:

{

  # This website is where you can find package options:
  # https://home-manager-options.extranix.com/

  # I got this basic setup in the next four lines 
  # from the home-manager documentation in a section 
  # titled "Configuration Example"
  home.username = "ryano";
  home.homeDirectory = "/home/ryano";
  home.stateVersion = "25.05";
  programs.home-manager.enable = true;

  imports = [
    ./tmux/definition.nix
    ./sway/definition.nix
    ./neovim/definition.nix
    ./foot/definition.nix
  ];

  # My beloved web browser. 
  programs.firefox = {
    enable = true;
  };

  # The one holy source control software. 
  programs.git = {
    enable = true;
    settings = {
      user = {
        email = "ryanoatmeal94@outlook.com";
	name = "ryanoatmeal";
      };
    };
  };

  # Here's an example for how to import a config file.
  #  home.file.".config/tree-sitter" = {
  #    source = ./tree_sitter;
  #    recursive = true;
  #    force = true;
  #  };

  # Without this, sway's man pages don't show up.
  programs.man = {
    enable = true;
    generateCaches = true;
  };

  # This starts sway on login if there isn't a display already and only if 
  # you're on tty1. That last requirement is nice if you need to login real 
  # real quick outside of a graphical session.
  # Note: '' is what we use for multi line literals. 
  programs.bash = { 
    enable = true;
    profileExtra = '' 
      if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
        exec sway
      fi
    '';
  };

  # This service allows me to manage my external monitor. 
  # The relevant output info was found using 
  # `swaymsg - t get_outputs`
  services.kanshi = {
    enable = true;
    settings = [
      {
        profile.name = "undocked";
        profile.outputs = [
          {
            criteria = "eDP-1";
            status = "enable";
            scale = 1.0;
            position = "0,0";
          }
        ];
      }
      {
        profile.name = "docked";
        profile.outputs = [
          {
            criteria = "eDP-1";
            status = "disable";
          }
          {
            criteria = "HDMI-A-1";
            status = "enable";
            scale = 1.0;
            position = "0,0";
          }
        ];
      }
    ];
  };

  # For all my encryption needs.
  programs.gpg.enable = true;

  home.shellAliases = {
    # https://www.gnu.org/software/texinfo/manual/info-stnd/html_node/infokey-format.html
    # Most important for your purposes: 
    # hjkl'ish navigation.
    # `alt + g` enter node your cursor is on. 
    # `ctrl + x + n/p/u` next/previous/up.
    # `g/G` top/bottom of node.
    info = "info --vi-keys";
    # I dream of syntax highlighting with rlwrap soon. 
    # https://aartaka.me/customize-ed-2.html
    # All in good time :)
    ed = "rlwrap ed --verbose --traditional ";
    # Make build time go brrrr
    make = "make -j$(nproc)";
  };

  home.sessionVariables = {
    # For grimshot. See the man page.
    XDG_SCREENSHOTS_DIR = "/home/ryano/Pictures/screenshots";
  };  
}
