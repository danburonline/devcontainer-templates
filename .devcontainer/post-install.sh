#!/bin/bash

# Install Poetry
curl -sSL https://install.python-poetry.org | python

# Configure Poetry to use local virtual envs
poetry config virtualenvs.in-project true

# Install all dependencies via Poetry
poetry install
