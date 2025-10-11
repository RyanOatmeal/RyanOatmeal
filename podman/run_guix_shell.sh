#!/usr/bin/dash

cd base

# https://guix.gnu.org/manual/en/html_node/Invoking-guix-shell.html
guix shell --container --pure --manifest=manifest.scm -- bash --rcfile /base/initialize_bash.sh