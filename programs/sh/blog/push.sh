#!/usr/bin/dash

# This is a script to push up to the branch you are on with a token. 

# This script should be ran from the root directory of
# the project.

. "../secrets.env"
. "programs/sh/git/push.sh"

REPO="ryanoatmeal.github.io"

push "$REPO" "$TOKEN"
