#!/bin/dash

# This is a script to decrypt my project planning. 

# This script should be ran from the root directory of
# the project.

. "../secrets.env"

gpg --batch --yes --passphrase "$PASS_PHRASE" \
    -o docs/private.tar \
    -d docs/private.tar.gpg

# x means extract, f means file spepcified
tar -xf docs/private.tar

rm docs/private.tar.gpg
rm docs/private.tar
