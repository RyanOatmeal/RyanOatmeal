#!/usr/bin/dash

. ./scripts/environment/source.env

podman exec --privileged -it $RYAN_OATMEAL_CONTAINER_NAME sh run_guix_shell.sh