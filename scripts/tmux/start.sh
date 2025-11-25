#!/bin/dash

# Add logic for a dynamic session name after you set up the custom
# rust logic binary.

# Once that logic is setup, have `mod + enter` start your window
# with a tmux session running.

SESSION_NAME="ryan_oats"

tmux new-session -d -s "$SESSION_NAME"
tmux attach-session -t "$SESSION_NAME"
