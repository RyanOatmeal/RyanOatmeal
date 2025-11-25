{ config, pkgs, ... }:


let
  ed = "rlwrap ed --verbose --traditional ";
in

{
  # Terminal multiplexer
  programs.tmux = {
    enable = true;
    # I'm a big fan of mapping keybinds to words in my head. 
    # `a` stands for "Articulate" (`a` was one of the few keys available lol)
    extraConfig = ''
      bind-key a switch-client -T MySnippets
      bind-key -T MySnippets e send-keys "${ed}"
    '';
  };
}
