
# fzf

[fzf](https://github.com/junegunn/fzf) is a general-purpose command-line fuzzy finder. It can be used to interactively search files, command history, processes, and more.

## Installation

Install via Homebrew:
```sh
brew install fzf
```

> See [fzf installation guide](https://github.com/junegunn/fzf#installation) for other methods.

## Shell integration

fzf provides key bindings and fuzzy completion for zsh. This is set up automatically by the ome fzf module via:
```sh
source <(fzf --zsh)
```

This enables:
- `Ctrl+R` — fuzzy search command history
- `Ctrl+T` — fuzzy find files and directories
- `Alt+C` — fuzzy cd into a directory

To disable specific bindings, set the variable empty before sourcing:
```sh
FZF_CTRL_R_COMMAND= FZF_ALT_C_COMMAND= source <(fzf --zsh)
```

## Usage

| Action | Command / Key |
| :--- | :--- |
| Launch fzf | `fzf` |
| Fuzzy search history | `Ctrl+R` |
| Fuzzy find files | `Ctrl+T` |
| Fuzzy cd into directory | `Alt+C` |
| Pipe input to fzf | `cat file \| fzf` |
| Preview files while searching | `fzf --preview 'cat {}'` |

### Common patterns

```sh
# Open a file in editor
vim $(fzf)

# cd into a directory
cd $(find . -type d | fzf)

# Kill a process
kill $(ps aux | fzf | awk '{print $2}')

# Git checkout branch
git checkout $(git branch | fzf)
```

## Configuration

fzf can be configured via the `FZF_DEFAULT_OPTS` environment variable:
```sh
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border"
```

| Variable | Purpose |
| :--- | :--- |
| `FZF_DEFAULT_COMMAND` | Default command for file listing (e.g. `fd --type f`) |
| `FZF_DEFAULT_OPTS` | Default options for fzf |
| `FZF_CTRL_T_COMMAND` | Command used by `Ctrl+T` |
| `FZF_ALT_C_COMMAND` | Command used by `Alt+C` |

> Tip: Use [fd](https://github.com/sharkdp/fd) as the default command for faster, git-aware file searching:
> ```sh
> export FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude .git"
> ```
