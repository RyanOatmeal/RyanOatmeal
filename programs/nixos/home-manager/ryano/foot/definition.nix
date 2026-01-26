{ config, pkgs, ... }:

{
  # This is the terminal emulator that I use.
  programs.foot = { 
    enable = true; 
    settings = {
      main = {
        # Where did this font come from? Good question. You can see it being 
        # installed in the system configuration file.
        font = "BigBlueTermPlus Nerd Font Mono:size=12"; 
      };
      # This will need to be changed from `colors` to `colors-dark` soon. 
      # The nix package was just out of date when I initially configured this.
      # https://codeberg.org/dnkl/foot/commit/cf2b390f6e096e7a2ca93d4dece153eb13261a2e
      # https://codeberg.org/dnkl/foot/src/branch/master/themes/gruvbox-dark
      colors = {
        background = "282828";
        foreground = "ebdbb2";
        regular0   = "282828";
        regular1   = "cc241d";
        regular2   = "98971a";
        regular3   = "d79921";
        regular4   = "458588";
        regular5   = "b16286";
        regular6   = "689d6a";
        regular7   = "a89984";
        bright0    = "928374";
        bright1    = "fb4934";
        bright2    = "b8bb26";
        bright3    = "fabd2f";
        bright4    = "83a598";
        bright5    = "d3869b";
        bright6    = "8ec07c";
        bright7    = "ebdbb2";
      };
    };
  };
}
