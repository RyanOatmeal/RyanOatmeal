#!/usr/bin/dash

. scripts/environment/source.env

cp ../secrets.env podman/secrets.env
echo "Copied in secrets.env file."

# podman at the end of this command is the name of the folder podman at the 
# root of the repository.
echo "Beginning podman build:"

BRANCH_NAME=${1:-main}
podman build --build-arg BRANCH_NAME="${BRANCH_NAME}" --tag $RYAN_OATMEAL_IMAGE_NAME podman

echo "Podman build succeeded."

echo "Creating Container: $RYAN_OATMEAL_CONTAINER_NAME"
podman create --privileged --name=$RYAN_OATMEAL_CONTAINER_NAME $RYAN_OATMEAL_IMAGE_NAME
echo "Created Container: $RYAN_OATMEAL_CONTAINER_NAME"

echo "Images and Containers After Installation:"
podman images
podman container list --all

rm podman/secrets.env
echo "Removed secrets.env from repository."