#!/usr/bin/dash

# This is a script to push up to the branch you are on with a token. 

# This script should be ran from the root directory of
# the project.

GH_USERNAME="RyanOatmeal"
REPO="RyanOatmeal"
. "../secrets.env"

CURRENT_BRANCH=$(git branch --show-current)

PUSH_URL="https://${GH_USERNAME}:${TOKEN}@github.com/${GH_USERNAME}/${REPO}.git"
echo "Push:"
git push $PUSH_URL $CURRENT_BRANCH
echo "Pull:"
git pull
echo "Status after push and pull:"
git status
