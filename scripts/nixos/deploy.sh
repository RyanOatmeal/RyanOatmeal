#!/bin/dash

sudo rm -r /etc/nixos
sudo cp -r nixos /etc/nixos
sudo nixos-rebuild switch
# I have no idea how the auto genereation of this 
# file works. So I'm just gonna move it into git 
# everytime I deploy, idk if it'll ever change.
rm nixos/config/hardware-configuration.nix
cp /etc/nixos/config/hardware-configuration.nix nixos/config/hardware-configuration.nix
