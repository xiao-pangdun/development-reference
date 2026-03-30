# Ghostty

Check out [Ghostty](https://ghostty.org/) official website

Ghostty is a fast, feature-rich, and cross-platform terminal emulator that uses platform-native UI and GPU acceleration.

## installation

To install Ghostty by homebrew, run the following command in your terminal:

```sh
brew install --cask ghostty
```

## Fixing SSH Issues

When using SSH from Ghostty, you may encounter errors like `'xterm-ghostty': unknown terminal type` because remote servers don't have the Ghostty terminfo entry installed.

### Option 1: Install terminfo on the remote server

Copy the Ghostty terminfo to the remote host using the provided shell integration helper:

```sh
infocmp -x xterm-ghostty | ssh YOUR_HOST -- tic -x -
```

### Option 2: Set a compatible TERM value

If you can't install terminfo on the remote server, override the `TERM` environment variable before connecting:

```sh
TERM=xterm-256color ssh YOUR_HOST
```

Or add this to your `~/.ssh/config` for specific hosts:

```
Host YOUR_HOST
    SetEnv TERM=xterm-256color
```
