# dymos-container
Scripts to setup a minimal Debian Docker container with Dymos and its prerequisite libraries installed. This repository is not maintained and is not guaranteed to use the latest version of Dymos, PyOptSparse, or any other libraries or utilities.

## Platform Compatability
These scripts were built for macOS, but can easily be adapted to Unix-based systems. A Windows port may be more difficult, but the Dockerfile should still work with minimal adaptation required.

## Prerequisites
1. Docker installed and configured.
2. A copy of the SNOPT source code (unzipped).

## Usage
1. Run `configure.sh` and follow the prompts to specify the relative directory with the SNOPT source code.
2. Run `build_image.sh` to build the Dymos Docker image. This may take several minutes.
3. Run `start.sh` to start the container interactively.

At this point, you can attach the container to Visual Studio Code or continue editing interactively in the container with `vim` or your command line text editor of choice.

There is a folder created from the `start.sh` script in the root directory of the repository called `shared`. This directory is mounted to the `/root/shared` directory in the container. Use this container to move data to and from the container.