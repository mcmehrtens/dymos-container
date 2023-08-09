#!/bin/bash
# If the container is running, stop it.
if [[ "$(docker ps | grep dymos)" != "" ]]; then
    echo "Stopping dymos container..."
    docker stop -t 0 dymos
fi