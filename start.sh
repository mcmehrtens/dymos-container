#!/bin/bash
# Check if the image exists.
if [[ "$(docker images -q dymos:$(<VERSION) 2> /dev/null)" == "" ]]; then
    echo "ERROR: dymos:$(<VERSION) image not found. Run build_image.sh first."
    exit 1
fi

# Check if the container exists.
if [[ "$(docker ps -a | grep dymos)" != "" ]]; then
    # Rejoin the container interactively.
    echo "dymos container found. Rejoining it..."
    docker start -i dymos
else
    # Make sure the shared folder exists.
    echo "Creating shared folder..."
    mkdir -p shared
    
    # Create the container and join it interactively.
    echo "Creating dymos container..."
    docker run -it --name dymos -v $(pwd)/shared:/root/shared dymos:$(<VERSION)
fi