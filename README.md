# boga-quotes

- [1. Development](#1-development)
  - [1.1. Standards](#11-standards)
    - [1.1.1. `pyproject.toml`](#111-pyprojecttoml)
  - [1.2. Local setup](#12-local-setup)
    - [1.2.1. `poetry`](#121-poetry)
    - [1.2.2. `.venv`](#122-venv)

## 1. Development

### 1.1. Standards

#### 1.1.1. `pyproject.toml`

The `pyproject.toml` file is useful to define some metadata information, organise dependencies and as a centralised document to keep (most) of the configurations for other utilities.

You can find more info about some common headings in the [official docs](https://packaging.python.org/en/latest/guides/writing-pyproject-toml/).

### 1.2. Local setup

#### 1.2.1. `poetry`

We use `poetry` to package the application and organise its dependencies.

You can follow these steps from the official documentation to install and get started with it:

- [Installation](https://python-poetry.org/docs/#installation)
- [Enable tab completion](https://python-poetry.org/docs/#enable-tab-completion-for-bash-fish-or-zsh)

#### 1.2.2. `.venv`

To create a virtual environment local to the project, you can use the following commands:

```shell
poetry config virtualenvs.in-project true
poetry install
```

Now you can point your IDE to use that environment.
