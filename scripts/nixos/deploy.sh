#!/bin/dash

sudo rm -r /etc/nixos
sudo cp -r nixos /etc/nixos
sudo nixos-rebuild switch
