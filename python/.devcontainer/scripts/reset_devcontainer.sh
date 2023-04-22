#!/bin/bash

# ? Use this utility script to reset the devcontainer to its initial state
# 1. Open the repo locally, not inside a devcontainer
# 2. Be sure that the Docker daemon is running
# 3. Run this script from the root of the microservice

# Delete the virtual environment
rm -rf .venv

# Stop and delete the containers
docker stop PythonDevcontainer
docker container rm python_devcontainer

# Remove the devcontainer images
docker image rm mcr.microsoft.com/devcontainers/python
docker image rm python_devcontainer-devcontainer
docker image rm python_devcontainer-devcontainer

# Remove the devcontainer volumes
docker volume rm python_devcontainer_cached-virtual_env
docker volume rm vscode
