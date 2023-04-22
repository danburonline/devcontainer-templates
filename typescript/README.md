# TypeScript Devcontainer Template

This template can be used to create a [Visual Studio Code Remote Containers](https://aka.ms/vscode-remote/containers) development container with a [TypeScript](https://www.typescriptlang.org) project.

The devcontainer is setup via a custom Dockerfile that installs all foundational things for the development environment. After the devcontainer is setup, the `postCreateCommand` will install the project dependencies and other tools. I also utilise Docker compose in order to start the devcontainer as a service so that adding e.g. a database is easy.
