#!/usr/bin/dash

# https://guix.gnu.org/manual/en/html_node/Build-Environment-Setup.html
guix-daemon --build-users-group=guixbuild &
cd tmp
guix shell --container coreutils