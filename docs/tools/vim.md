
# Vim

[Vim](https://www.vim.org/) is a highly configurable terminal-based text editor built on vi.

## Installation

Vim is pre-installed on macOS. To get the latest version:
```sh
brew install vim
```

## Configuration

Vim is configured via `~/.vimrc`. See `:help vimrc` for details.

## Usage

| Action | Command |
| :--- | :--- |
| Open a file | `vim file.txt` |
| Open at line number | `vim +42 file.txt` |
| Open in read-only mode | `vim -R file.txt` |
| Open multiple files | `vim file1.txt file2.txt` |
| Diff two files | `vim -d file1.txt file2.txt` |

### Modes

| Mode | Enter | Purpose |
| :--- | :--- | :--- |
| Normal | `Esc` | Navigate and run commands |
| Insert | `i` / `a` / `o` | Edit text |
| Visual | `v` / `V` / `Ctrl+V` | Select text |
| Command | `:` | Run ex commands |

### Common commands

| Action | Key / Command |
| :--- | :--- |
| Save | `:w` |
| Quit | `:q` |
| Save and quit | `:wq` or `ZZ` |
| Quit without saving | `:q!` |
| Undo | `u` |
| Redo | `Ctrl+R` |
| Search | `/pattern` |
| Search and replace | `:%s/old/new/g` |
| Go to line | `:42` or `42G` |
| Copy line | `yy` |
| Paste | `p` |
| Delete line | `dd` |
| Jump to file start | `gg` |
| Jump to file end | `G` |

### Navigation

| Action | Key |
| :--- | :--- |
| Move by character | `h` `j` `k` `l` |
| Move by word | `w` / `b` / `e` |
| Start / end of line | `0` / `$` |
| Next / prev paragraph | `}` / `{` |
| Top / middle / bottom of screen | `H` / `M` / `L` |
| Page up / down | `Ctrl+B` / `Ctrl+F` |

### Splits and tabs

| Action | Command |
| :--- | :--- |
| Horizontal split | `:sp file` |
| Vertical split | `:vsp file` |
| Navigate splits | `Ctrl+W` then `h` `j` `k` `l` |
| New tab | `:tabnew file` |
| Next / prev tab | `gt` / `gT` |
