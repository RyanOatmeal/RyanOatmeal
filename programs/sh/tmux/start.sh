#!/bin/dash

STARTING_DIR=$(pwd)
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
SESSION_NAME="ryan_oats_$$"

DIR="session_programs"

if [ -e "$DIR" ]; then
  printf "%s%s\n" \
         "ERROR: $DIR exists. Delete it with " \
         "\`rm -r session_programs\`"
  exit 1
else
  cd $SCRIPT_DIR
  cd ../../../
  cp -r programs $STARTING_DIR/session_programs
  cd $STARTING_DIR
fi

tmux new-session -d -s "$SESSION_NAME"
tmux attach-session -t "$SESSION_NAME"

