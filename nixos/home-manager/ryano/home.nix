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

  # Terminal multiplexer
  programs.tmux = {
    enable = true;
    extraConfig = ''
      bind-key a switch-client -T MySnippets
      bind-key -T MySnippets t run-shell "echo 'Hello World!'"
    '';
  };

  # This is an example for deploying home files. 
  # When I had this, it would deploy a folder in this directory called `neovim`.
  #  home.file.".config/nvim" = {
  #    source = ./neovim;
  #    recursive = true;
  #    force = true;
  #  };

  # I like sway because I used i3 a lot in college. I considered hyprland and 
  # Niri as they seem to be the other two competing tiling WM in the wayland 
  # world. I was not a fan of what I saw in hyprland's community nor did I 
  # like some of its architectural decisions. 
  # Niri's horizontal scrolling is not my style. Also, a very silly thing, 
  # but hyprland didn't have a simple home-manager installation instruction on 
  # on the nix-os wiki :).
  wayland.windowManager.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    config = rec {
      modifier = "Mod4";
      terminal = "foot";
    };
  };

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

  # This is the terminal emulator that I use.
  programs.foot = { 
    enable = true; 
    settings = {
      main = {
        # Where did this font come from? Good question. You can see it being 
        # installed in the system configuration file.
        font = "BigBlueTermPlus Nerd Font Mono:size=12"; 
      };
    };
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
}
