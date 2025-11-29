#!/bin/dash


# TODO: Place this in deploy. Just let it fail there.

sudo rm -r /etc/nixos
sudo cp -r programs/nixos /etc/nixos
sudo nix-channel --update
sudo nixos-rebuild test
