#!/bin/dash

# This is a script to decrypt my project planning. 

# This script should be ran from the root directory of
# the project.

. "../secrets.env"

gpg --batch --yes --passphrase $PASS_PHRASE -o notes/project_planning.txt -d notes/project_planning.txt.gpg
rm notes/project_planning.txt.gpg
