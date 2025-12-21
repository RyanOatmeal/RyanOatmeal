{ config, pkgs, ... }:


let
  ed = "rlwrap ed --verbose --traditional ";
in

{
  # We are going to use tmux display -p "#{client_width}" and 
  # tmux resize window after startup in order to calculate 
  # window widths with a max of up to 80 columns. I don't 
  # think it'll be too hard but it is definitely time to 
  # bringing in rust binaries.

  # Terminal multiplexer
  programs.tmux = {
    enable = true;
    # I'm a big fan of mapping keybinds to words in my head. 
    # `a` stands for "Articulate" (`a` was one of the few keys available lol)
    extraConfig = ''
      setw -g mode-keys vi
      bind-key a switch-client -T MySnippets
      bind-key -T MySnippets e send-keys "${ed}"
    '';
  };
}
