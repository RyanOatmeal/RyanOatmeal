#!/bin/bash

# This is a script to encrypt my project planning. 

# This script should be ran from the root directory of
# the project.

# This is a setting that causes the whole 
# script to fail if we exit with a 1.
set -e

PASS_PHRASE_FILE="../pass_phrase"

if [[ ! -f "$PASS_PHRASE_FILE" ]]; then
  echo "Error: The path to $PASS_PHRASE_FILE does not lead to a file"
  exit 1
fi

PASS_PHRASE=$(cat "$PASS_PHRASE_FILE" | tr -d '\n')
gpg --batch --yes --passphrase "$PASS_PHRASE" -c notes/project_planning.txt
rm notes/project_planning.txt
