<h1 align="center">
  Nx/Python Monorepo Template
</h1>

<p align="center">
  Kingly's template for Nx workspaces with multiple Python projects.
</p>

<div align="center">

<a href="">![VSCode](https://img.shields.io/badge/vscode-007ACC?style=for-the-badge&logo=visual-studio-code&logoColor=white)</a>
<a href="">![Nx](https://img.shields.io/badge/nx-123456?style=for-the-badge&logo=nx&logoColor=white)</a>
<a href="">![pnpm](https://img.shields.io/badge/pnpm-2F8BA7?style=for-the-badge&logo=pnpm&logoColor=white)</a>
<a href="">![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)</a>

</div>

## Overview

This template provides a basic structure for a monorepo workspace with multiple Python projects. It uses the Nx Python Plugin to manage Python projects and provides a set of tools for development, testing, linting, and formatting.

### Ecosystem

This workspace template use the following tools/technologies:

- [Nx](https://nx.dev/) - Extensible build framework for monorepo development.
- [Python](https://www.python.org/) - Programming language.
- [Nx Python Plugin](https://github.com/lucasvieirasilva/nx-plugins/blob/main/packages/nx-python/README.md) - Nx plugin for Python projects.
- [Poetry](https://python-poetry.org/) - Dependency management.
- [Pytest](https://docs.pytest.org/en/stable/) - Testing framework.
- [Flake8](https://flake8.pycqa.org/en/latest/) - Linting tool.
- [Black](https://black.readthedocs.io/en/stable/) - Code formatter.
- [Mypy](https://mypy.readthedocs.io/en/stable/) - Static type checker.
- [Coverage](https://coverage.readthedocs.io/en/6.0/) - Code coverage tool.

### VS Code Extensions Suggestions

The following extensions are suggested for a better development experience in Visual Studio Code (`.vscode/extensions.json` file).

- [Nx Console](https://marketplace.visualstudio.com/items?itemName=nrwl.angular-console) - Nx Console for Visual Studio Code.
- [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python) - Python extension for Visual Studio Code.
- [Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance) - Python language server for Visual Studio Code.
- [Debugpy](https://marketplace.visualstudio.com/items?itemName=ms-python.debugpy) - Python debugger for Visual Studio Code.
- [Black Formatter](https://marketplace.visualstudio.com/items?itemName=ms-python.black-formatter) - Black formatter for Visual Studio Code.
- [Flake8](https://marketplace.visualstudio.com/items?itemName=ms-python.flake8) - Flake8 linter for Visual Studio Code.

### Requirements

- [Node.js](https://nodejs.org/) - JavaScript runtime.
- [NPM](https://www.npmjs.com/) - Package manager for JavaScript.
- [PNPM](https://pnpm.io/) - Fast, disk space efficient package manager.
- [Pyenv](https://github.com/pyenv/pyenv) - Python version manager.
- [Poetry](https://python-poetry.org/) - Dependency management.

## Getting Started

1. In github, click on the `Use this template` button to create a new repository using this template.
2. Clone the repository to your local machine.
3. Install the dependencies by running `pnpm install`.
4. Install the Python dependencies by running `poetry install`.
5. Install VS Code extensions suggested in the `.vscode/extensions.json` file (Press `F1` and run the `Extensions: Install from recommendations` command).
6. Create a new Python project by running `pnpx nx generate @nx-python/workspace:app <project-name>`. Also you can create a new library by running `pnpx nx generate @nx-python/workspace:lib <library-name>`. You can also use the Nx Console extension to create new projects.
7. Change the name of the Python project in the `pyproject.toml` file.
8. Let's start coding!

## Maintainers

- Carlos Cosming - [GitHub](https://github.com/ccosming) - [LinkedIn](https://www.linkedin.com/in/ccosming/)