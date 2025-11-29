#!/bin/dash

# This is a script to encrypt my private docs which are mostly just me 
# brainstorming whatever comes off the top of my head.

# This script should be ran from the root directory of
# the project.

. "../secrets.env"

# -cf means create file 
tar -cf docs/private.tar docs/private

gpg --batch --yes --passphrase "$PASS_PHRASE" -c docs/private.tar
rm -r docs/private
rm docs/private.tar
