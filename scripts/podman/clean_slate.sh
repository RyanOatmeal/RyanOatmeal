#!/usr/bin/dash

podman kill --all
podman rm --all
podman rmi --all
podman images
podman container list