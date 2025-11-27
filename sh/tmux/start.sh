#!/bin/dash

# Add logic for a dynamic session name after you set up the custom
# rust logic binary.

# Once that logic is setup, have `mod + enter` start your window
# with a tmux session running.

# Another todo is to get this script automatically splitting vertically. 

# ALSO, we need an option where it fits to the terminal if we're in an 
# unfamiliar situation. All through keybinds ofc.

# Bring in a rust binary to calculate the width up to a max of 81 or 80.

SESSION_NAME="ryan_oats"

TERMINAL_HEIGHT=$(tput lines)

tmux new-session -d -s "$SESSION_NAME" -x 81 -y "$TERMINAL_HEIGHT"
tmux set-option -t "$SESSION_NAME" window-size manual
tmux attach-session -t "$SESSION_NAME"
