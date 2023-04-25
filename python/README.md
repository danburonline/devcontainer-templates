# Python Devcontainer Template

This template can be used to create a [Visual Studio Code Remote Containers](https://aka.ms/vscode-remote/containers) development container with a [Python](https://www.python.org) project.

The devcontainer is setup via a Dockerfile that installs all foundational things for the development environment.
Docker Compose starts the devcontainer as a service so that adding e.g. a database is easy.
The python package manager [Poetry](https://python-poetry.org/) is used to manage dependencies.
It is also used to manage the **development** dependencies (tools such as the linter, formatter, test framework), which integrate with VSCode to improve the developer experience.
The devcontainer configuration hooks up VSCode with the versions of these tools installed by Poetry.

You can add environment variables to the devcontainer (including maybe **secrets**) by creating a new file `.devcontainer/.env` (it will be read automatically).
