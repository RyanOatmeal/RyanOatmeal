#!/bin/dash

sudo rm -r /etc/nixos
sudo cp -r nixos /etc/nixos
sudo nix-channel --update
sudo nixos-rebuild switch
sudo nix-collect-garbage -d
# I have no idea how the auto generation of this 
# file works. So I'm just gonna move it into git 
# everytime I deploy, idk if it'll ever change.
rm nixos/config/hardware-configuration.nix
cp /etc/nixos/config/hardware-configuration.nix nixos/config/hardware-configuration.nix
