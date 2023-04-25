#!/bin/bash
# Add any runtime setup of your devcontainer:
# anything that needs to happen after the image has been built, such as actions that need to use your code
poetry install --with=dev
