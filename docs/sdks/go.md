# Go

Use goenv to install Go releases and choose a default version or a version for a specific project.

## Installation

Install goenv with Homebrew:

```sh
brew install goenv
```

## Shell setup

**With oh-my-environment**, run `ome install` to link the Go module, then open a new zsh session. The module initializes goenv automatically when its executable is on your `PATH`.

**For standalone zsh**, add the following line to `~/.zshrc`, then open a new zsh session:

```zsh
eval "$(goenv init -)"
```

## Choosing a Go version

Run `goenv install -l` to see available releases. Replace the example value below with your chosen version, then install it and set it as your default:

```sh
go_version=1.24.0
goenv install "$go_version"
goenv global "$go_version"
go version
```

To pin a version for a project, run the following from its root, using the installed version you want for that project:

```sh
goenv local "$go_version"
go version
```

`goenv local` writes a `.go-version` file. Inside that project, goenv uses the version in this file in preference to your global default. Commit the file to share the selection with teammates.
