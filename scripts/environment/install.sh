#!/usr/bin/dash

. scripts/environment/source.env

# podman at the end of this command is the name of the folder podman at the 
# root of the repository.
podman build --tag $RYAN_OATMEAL_IMAGE_NAME podman

podman create --privileged --name=$RYAN_OATMEAL_CONTAINER_NAME $RYAN_OATMEAL_IMAGE_NAME

echo "Images and Containers After Installation:"
podman images
podman container list --all