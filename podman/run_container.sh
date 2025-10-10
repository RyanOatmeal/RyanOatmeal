#!/usr/bin/dash

# https://guix.gnu.org/manual/en/html_node/Build-Environment-Setup.html
guix-daemon --build-users-group=guixbuild &

cd tmp

# https://guix.gnu.org/manual/en/html_node/Invoking-guix-shell.html
guix shell --container --pure coreutils