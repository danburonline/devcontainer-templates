# Define the default Python version
ARG PYTHON_VERSION=3
FROM mcr.microsoft.com/devcontainers/python:${PYTHON_VERSION}

# Install additional OS packages
RUN apt-get -y update && \
    apt-get -y install --no-install-recommends vim git

# Install python package manager
RUN pip install poetry setuptools
