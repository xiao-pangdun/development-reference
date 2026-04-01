
# zinit

[zinit](https://github.com/zdharma-continuum/zinit) is a flexible and fast zsh plugin manager. It supports deferred (turbo) loading to keep shell startup fast.

## Installation

To install zinit, run the following command in your terminal:
```sh
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
```

This installs zinit to `~/.zinit/`.

## Concepts

### Ice modifiers

`zinit ice` sets options for the **next** zinit command only. The "ice" is consumed after one use.

```zsh
zinit ice wait lucid
zinit light zsh-users/zsh-autosuggestions
# wait lucid is NOT applied to the next command
zinit light zsh-users/zsh-completions
```

### Loading methods

| Method | Description |
| :--- | :--- |
| `zinit light <repo>` | Load a plugin from GitHub without tracking |
| `zinit load <repo>` | Load a plugin with tracking (debug/reporting) |
| `zinit snippet <url>` | Load a single file from a URL or shorthand |

### Snippet shorthands

| Prefix | Source |
| :--- | :--- |
| `OMZL::` | oh-my-zsh `lib/` directory (shared utilities) |
| `OMZP::` | oh-my-zsh `plugins/` directory |
| `OMZT::` | oh-my-zsh `themes/` directory |
| `PZT::` | prezto module |

```zsh
zinit snippet OMZL::git.zsh          # load oh-my-zsh lib/git.zsh
zinit snippet OMZP::git              # load oh-my-zsh git plugin
zinit snippet OMZP::command-not-found
```

### Turbo mode (deferred loading)

Turbo mode defers plugin loading until the shell is idle, making the prompt appear faster.

```zsh
zinit ice wait lucid
zinit light zsh-users/zsh-autosuggestions
```

- `wait` — defer until idle (default 0ms after prompt). Use `wait"1"` for 1 second delay
- `lucid` — suppress "Loaded ..." messages after prompt

To control ordering between deferred plugins, use letter suffixes:

```zsh
zinit ice wait"0a" lucid
zinit snippet OMZL::git.zsh       # loads first
zinit ice wait"0b" lucid
zinit snippet OMZP::git           # loads second
```

## zinit vs oh-my-zsh

| | zinit | oh-my-zsh |
| :--- | :--- | :--- |
| **Startup speed** | Fast — turbo mode defers plugin loading | Slower — all plugins load synchronously |
| **Plugin loading** | Per-plugin control (deferred, conditional) | All-or-nothing via `plugins=()` array |
| **omz plugin support** | Yes, via `zinit snippet OMZP::` | Native |
| **Plugin sources** | GitHub repos, omz, prezto, URLs, local files | Built-in plugins + `$ZSH_CUSTOM` only |
| **Framework overhead** | Minimal — just a plugin manager | Full framework (themes, lib, update system) |
| **Configuration** | Explicit commands in `.zshrc` | Declarative `plugins=()` + env vars |
| **Learning curve** | Steeper — ice modifiers, multiple loading methods | Simple — edit one array |
| **Themes** | Use standalone prompts (e.g. starship) | 150+ built-in themes |
| **Community** | Smaller, maintained by zdharma-continuum | Large, well-established |

**Why we switched:** Turbo mode gives noticeably faster shell startup by deferring plugins that aren't needed immediately. zinit can still load omz plugins via snippets, so we don't lose access to the omz ecosystem.

## Cheatsheet

| Action | Command |
| :--- | :--- |
| Load a GitHub plugin | `zinit light user/repo` |
| Load with turbo | `zinit ice wait lucid` then `zinit light user/repo` |
| Load an omz plugin | `zinit snippet OMZP::plugin-name` |
| Update all plugins | `zinit update --all` |
| Update a single plugin | `zinit update user/repo` |
| List loaded plugins | `zinit list` |
| Remove a plugin | `zinit delete user/repo` |
| Self-update zinit | `zinit self-update` |
| Check zinit version | `zinit --version` |
