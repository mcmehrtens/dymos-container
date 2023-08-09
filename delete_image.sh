#!/bin/sh
# Delete the container.
./delete_container.sh

# If a dymos image in the current version exists, delete it.
if [[ "$(docker images -q dymos:$(<VERSION) 2> /dev/null)" != "" ]]; then
    echo "Removing dymos:$(<VERSION) image..."
    docker rmi dymos:$(<VERSION)
fi