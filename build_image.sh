#!/bin/bash
# Delete the container.
./delete_container.sh

# Build the image.
echo "Building dymos:$(<VERSION) image..."
docker build -t dymos:$(<VERSION) .