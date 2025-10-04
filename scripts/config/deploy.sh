#!/bin/sh

# This is a script to deploy my foot config. 

# This script should be ran from the root directory of
# the project.

if [ -z "${XDG_CONFIG_HOME}" ]; then
  echo "Error: XDG_CONFIG_HOME is empty." >&2
  exit 1
fi 

rm -rf $XDG_CONFIG_HOME/foot
mkdir $XDG_CONFIG_HOME/foot
cp scripts/config/foot.ini $XDG_CONFIG_HOME/foot/foot.ini
