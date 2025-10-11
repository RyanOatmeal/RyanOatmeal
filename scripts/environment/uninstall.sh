#!/usr/bin/dash

. ./scripts/environment/source.env

echo "Stopping $RYAN_OATMEAL_CONTAINER_NAME"
podman stop --time=5 $RYAN_OATMEAL_CONTAINER_NAME
podman rm $RYAN_OATMEAL_CONTAINER_NAME
podman rmi $RYAN_OATMEAL_IMAGE_NAME
podman rmi docker.io/library/debian:sid
echo "Images and Containers After Removals"
podman images
podman container list
