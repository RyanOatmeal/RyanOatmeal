#!/bin/bash

# This is a setting that causes the whole 
# script to fail if we exit with a 1.
set -e

GH_USERNAME="RyanOatmeal"
REPO="RyanOatmeal"
TOKEN_FILE="../token"

if [[ ! -f "$TOKEN_FILE" ]]; then
  echo "Error: The path to $TOKEN_FILE does not lead to a file"
  exit 1
fi

TOKEN=$(cat "$TOKEN_FILE" | tr -d '\n')
PUSH_URL="https://${GH_USERNAME}:${TOKEN}@github.com/${GH_USERNAME}/${REPO}.git"
git push "$PUSH_URL" main
