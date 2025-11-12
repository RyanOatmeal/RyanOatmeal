#!/bin/dash

SESSION_NAME="ryan_oats"

tmux new-session -d -s "$SESSION_NAME"
tmux attach-session -t "$SESSION_NAME"
