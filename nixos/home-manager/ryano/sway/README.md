## Basics

- `man -k sway` is where to find documentation. There isn't much online.
- `cat ~/.config/sway/config` is where home manager places the initial config. 
  Make sure to not edit this file, but the home manager entry instead. Just use
  the config file as a reference when you forget a keybind. 

## Keybinds

In my case, `mod` is the windows key on my keyboard.

- `mod + enter` to create a new terminal.
- `mod + <h, j, k, or l>` to navigate windows a la vi.
- `mod + shift + <directional key>` to move window around.

- `mod + v` to change terminal generation to vertical split.
- `mod + b` to change terminal generation to horizontal split.
- `mod + e` terminal layout toggle split between vertical and 
  horizontal.

- `mod + w` swap to tab layout. 
- `mod + s` swap to stacking layout.
- To exit stacking or tabbed layout, `mod + e` twice.

- `mod + d` to open a search bar for programs.
- `mod + shift + <number>` to send a window to a different tab.
