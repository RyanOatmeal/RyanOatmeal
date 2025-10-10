#!/usr/bin/dash

# Starts the podman container. 

. scripts/environment/source.env

podman start $RYAN_OATMEAL_CONTAINER_NAME