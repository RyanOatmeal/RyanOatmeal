#!/bin/bash

# This is a script to push up to main with a token. 

# This script should be ran from the root directory of
# the project.

GH_USERNAME="RyanOatmeal"
REPO="RyanOatmeal"
. "../secrets.env"

PUSH_URL="https://${GH_USERNAME}:${TOKEN}@github.com/${GH_USERNAME}/${REPO}.git"
git push "$PUSH_URL" main
