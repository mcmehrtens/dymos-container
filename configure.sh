#!/bin/bash
# Get SNOPT directory.
read -p "Enter the relative path to the SNOPT directory: " SNOPT_DIR

# Copy the Dockerfile.
cp Dockerfile.template Dockerfile

# Replace SNOPT directory. The extra "" is for macOS compatibility.
sed -i "" "s|SNOPT_DIR|$SNOPT_DIR|g" Dockerfile