#!/usr/bin/dash

. ./scripts/environment/source.env

podman run --privileged --name $RYAN_OATMEAL_CONTAINER_NAME --replace -it $RYAN_OATMEAL_IMAGE_NAME sh run_container.sh