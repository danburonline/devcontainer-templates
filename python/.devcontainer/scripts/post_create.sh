#!/bin/bash

# Install Poetry
curl -sSL https://install.python-poetry.org | python - --version 1.3.2

# Configure Poetry to use local virtual envs
poetry config virtualenvs.in-project true

# Modify permissions on the virtual env
sudo chmod -R 777 .venv

# Install dependencies
poetry install
