#!/bin/sh
# Stop the container.
./stop.sh

# If the container exists, delete it.
if [[ "$(docker ps -a | grep dymos)" != "" ]]; then
    echo "Removing dymos container..."
    docker rm dymos
fi