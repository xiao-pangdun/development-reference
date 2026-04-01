
# lazygit

[lazygit](https://github.com/jesseduffield/lazygit) is a terminal UI for git. It provides an interactive interface for staging, committing, rebasing, resolving conflicts, and more.

## Installation

Install via Homebrew:
```sh
brew install lazygit
```

## Configuration

lazygit configuration lives at `~/Library/Application Support/lazygit/config.yml` on macOS.

To open the config from within lazygit, press `o`.

See the [full configuration reference](https://github.com/jesseduffield/lazygit/blob/master/docs/Config.md) for all options.

## Usage

Launch lazygit from any git repository:
```sh
lazygit
```

### Navigation

| Key | Action |
| :--- | :--- |
| `h` / `l` | Switch between panels |
| `j` / `k` | Move up/down in a list |
| `enter` | Focus/expand item |
| `?` | Show all keybindings |
| `q` | Quit |

### Common operations

| Key | Panel | Action |
| :--- | :--- | :--- |
| `space` | Files | Stage/unstage file |
| `a` | Files | Stage/unstage all |
| `c` | Files | Commit staged changes |
| `p` | Commits | Push |
| `P` | Commits | Pull |
| `s` | Commits | Squash selected commit into previous |
| `r` | Commits | Reword commit message |
| `d` | Commits | Drop commit |
| `e` | Commits | Start interactive rebase from commit |
| `space` | Branches | Checkout branch |
| `n` | Branches | Create new branch |
| `M` | Branches | Merge into current branch |
| `z` | Any | Undo (experimental) |
