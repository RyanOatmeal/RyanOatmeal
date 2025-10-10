#!/usr/bin/dash

. ./scripts/environment/source.env

podman rm $RYAN_OATMEAL_CONTAINER_NAME
podman rmi $RYAN_OATMEAL_IMAGE_NAME
podman rmi docker.io/library/debian:sid
echo "Images and Containers After Removals"
podman images
podman container list
