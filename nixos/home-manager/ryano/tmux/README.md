These are my tmux scripts.

# Keybinds

I prefer to stick with a cli type interface as one can use through a glass 
teletype with scrolling capabilities. I'll also allow some more commands as justified
below.

## Scrolling

- `ctrl-b + [` and navigate with arrow keys.
- `q` to exit scrolling mode.

## Copying and Pasting

Not something I want to rely on often because of better tools available, but it's 
nice for moving error text out of the terminal and into something like a web 
browser.

- Make sure to be in scrolling mode.
- `ctrl + space` to start a selection.
- `ctrl + w` copy the selection and exit copy mode.

## Navigating Through Windows and Panes

Imagine this as printing out files through commands invoked in a glass teletype 
interface and having these sheets of paper available for reference.

- `ctrl-b + %` to split a pane into two horizontally.
- `ctrl-b + "` to split a pane into two vertically. 
- `ctrl-b + q` followed by number to change to pane inside a window.
- `ctrl-b + c` to create a new window.
- `ctrl-b + '` and enter window number to change to that window.

## Custom Keybinds

Look in `definition.nix` for current custom keybinds and use that file to add more.
