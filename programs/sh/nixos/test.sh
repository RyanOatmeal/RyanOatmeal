#!/bin/dash

sudo rm -r /etc/nixos
sudo cp -r programs/nixos /etc/nixos

(
  cd /etc/nixos
  sudo nix flake update
)
cp /etc/nixos/flake.lock programs/nixos/flake.lock

sudo nixos-rebuild test

# I have no idea how the auto generation of this 
# file works. So I'm just gonna move it into git 
# everytime I deploy, idk if it'll ever change.
sudo rm programs/nixos/config/hardware-configuration.nix
sudo cp /etc/nixos/config/hardware-configuration.nix programs/nixos/config/hardware-configuration.nix
