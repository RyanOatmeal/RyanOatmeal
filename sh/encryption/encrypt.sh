#!/bin/dash

# This is a script to encrypt my private notes which are mostly just me 
# brainstorming whatever comes off the top of my head.

# This script should be ran from the root directory of
# the project.

. "../secrets.env"

# -cf means create file 
tar -cf notes/private.tar notes/private

gpg --batch --yes --passphrase "$PASS_PHRASE" -c notes/private.tar
rm -r notes/private
rm notes/private.tar
