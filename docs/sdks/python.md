# Python

The best practice for managing Python versions and dependencies is to use a modern, fast tool like **uv**.

### Why use a package and project manager?
* **Speed**: `uv` is extremely fast, written in Rust.
* **Unified Tool**: It handles Python versions, projects, virtual environments, and package management in one tool (replacing `pip`, `poetry`, `pyenv`, etc.).
* **Reproducibility**: Ensures your project works the same way everywhere using lockfiles.

## uv

[uv](https://docs.astral.sh/uv/) is an extremely fast Python package installer and resolver. It is designed to be a drop-in replacement for `pip` and `pip-tools` while providing advanced project management features.

### Installation

To install uv by **Homebrew**, run the following command:

```sh
brew install uv
```

### Configuration

To enable shell autocompletion, add the following to your `~/.zshrc`:

```sh
eval "$(uv generate-shell-completion zsh)"
```

If you work on a project that requires a specific Python version, run this inside the project folder:
```sh
uv python pin 3.12
```
This creates a `.python-version` file that `uv` will automatically respect.

### Usage

| Action | Command |
| :--- | :--- |
| Initialize a new project | `uv init` |
| Add a dependency | `uv add requests` |
| Run a script | `uv run main.py` |
| Create virtual environment | `uv venv` |
| Install specific Python | `uv python install 3.12` |
| List installed Pythons | `uv python list` |
| Sync dependencies | `uv sync` |
| Remove a dependency | `uv remove requests` |
| Upgrade uv | `uv self update` |
