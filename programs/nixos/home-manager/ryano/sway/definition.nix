{ config, pkgs, ... }:

{
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
    extraConfig = ''
      bindsym Mod4+p       exec grimshot save active
      bindsym Mod4+Shift+p exec grimshot save area
      bindsym Mod4+Mod1+p  exec grimshot save output
      bindsym Mod4+Ctrl+p  exec grimshot save window
    '';
  };
}
