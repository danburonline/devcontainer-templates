#!/bin/bash

# ? Use this utility script to reset the devcontainer to its initial state
# 1. Open the repo locally, not inside a devcontainer
# 2. Be sure that the Docker daemon is running
# 3. Run this script from the root of the microservice

# Delete the packages and store
rm -rf node_modules
rm -rf .pnpm-store

# Stop and delete the containers
docker stop TypeScriptDevcontainer
docker container rm typescript_devcontainer

# Remove the devcontainer images
docker image rm mcr.microsoft.com/devcontainers/typescript-node
docker image rm typescript_devcontainer-devcontainer

# Remove the devcontainer volumes
docker volume rm cached-node_modules
docker volume rm cached-pnpm_store
docker volume rm vscode
