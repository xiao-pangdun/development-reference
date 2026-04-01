
# Yazi

[Yazi](https://yazi-rs.github.io/) is a fast terminal file manager written in Rust, with async I/O and image preview support.

## Installation

Install via Homebrew with all optional dependencies:
```sh
brew install yazi ffmpeg-full sevenzip jq poppler fd ripgrep fzf zoxide resvg imagemagick-full font-symbols-only-nerd-font
```

If ffmpeg or imagemagick is not working properly:
```sh
brew link ffmpeg-full imagemagick-full -f --overwrite
```

> See [yazi installation guide](https://yazi-rs.github.io/docs/installation) for other methods.

## Configuration

Yazi configuration lives at `~/.config/yazi/`. Key config files:

| File | Purpose |
| :--- | :--- |
| `yazi.toml` | General settings (file sorting, show hidden, etc.) |
| `keymap.toml` | Key bindings |
| `theme.toml` | Colors and styles |

See the [full configuration reference](https://yazi-rs.github.io/docs/configuration/yazi) for all options.

## Usage

| Action | Command |
| :--- | :--- |
| Open yazi (cd on exit) | `y` |
| Open yazi (no cd on exit) | `yazi` |
| Quit and cd to current dir | `q` |
| Quit without cd | `Q` |
| Check installed version | `yazi --version` |

### Shell wrapper

The `y` function is provided by the ome yazi module. It launches yazi and changes your shell's working directory to wherever you navigated when you quit with `q`.

### Optional dependencies

| Dependency | Purpose |
| :--- | :--- |
| ffmpeg | Video thumbnails |
| sevenzip | Archive preview |
| jq | JSON preview |
| poppler | PDF preview |
| fd | File searching |
| ripgrep | Content searching |
| fzf | Quick file navigation |
| zoxide | Directory history |
| resvg | SVG preview |
| ImageMagick | Font, HEIC, JPEG XL preview |
