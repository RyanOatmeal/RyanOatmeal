#!/bin/dash

# This is a script to encrypt my project planning. 

# This script should be ran from the root directory of
# the project.

. "../secrets.env"

gpg --batch --yes --passphrase $PASS_PHRASE -c notes/project_planning.txt
rm notes/project_planning.txt
