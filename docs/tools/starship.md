
# Starship

[Starship](https://starship.rs/) is a minimal, fast, and customizable prompt for any shell. It shows relevant information (directory, git status, language versions) based on context.

## Installation

Install via Homebrew:
```sh
brew install starship
```

> See [starship installation guide](https://starship.rs/guide/#%F0%9F%9A%80-installation) for other methods.

## Configuration

Starship works out of the box with no configuration. To customize, create `~/.config/starship.toml`:
```sh
mkdir -p ~/.config && touch ~/.config/starship.toml
```

See the [full configuration reference](https://starship.rs/config/) for all options.

## Usage

| Action | Command |
| :--- | :--- |
| Check installed version | `starship --version` |
| Preview a specific module | `starship module git_branch` |
| Show all active modules | `starship prompt` |
| Open config in editor | `$EDITOR ~/.config/starship.toml` |
| View default config | `starship print-config` |
| Explain current prompt | `starship explain` |
| Measure module timings | `starship timings` |
