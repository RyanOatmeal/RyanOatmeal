#!/bin/dash

# This is a script to decrypt my project planning. 

# This script should be ran from the root directory of
# the project.

. "../secrets.env"

gpg --batch --yes --passphrase "$PASS_PHRASE" \
    -o docs/private.tar.xz \
    -d docs/private.tar.xz.gpg

# x means extract, f means file spepcified
tar -xf docs/private.tar.xz

rm docs/private.tar.xz.gpg
rm docs/private.tar.xz
