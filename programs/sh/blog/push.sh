#!/usr/bin/dash

# This is a script to push up to the branch you are on with a token. 

# This script should be ran from the root directory of
# the project.

. "programs/sh/git/push.sh"
REPO="ryanoatmeal.github.io"

PUSH_URL="https://${GH_USERNAME}:${WEBSITE_TOKEN}@github.com/${GH_USERNAME}/${REPO}.git"

dash push_messaging.sh
