#!/bin/dash

# This is a script to decrypt my project planning. 

# This script should be ran from the root directory of
# the project.

. "../secrets.env"

gpg --batch --yes --passphrase "$PASS_PHRASE" \
    -o notes/private.tar \
    -d notes/private.tar.gpg

# x means extract, f means file spepcified
tar -xf notes/private.tar

rm notes/private.tar.gpg
rm notes/private.tar
