#!/bin/dash

sudo rm -r /etc/nixos
sudo cp -r programs/nixos /etc/nixos
sudo nix-channel --update
sudo nixos-rebuild test
