# Node.js

The best practice for installing and managing Node.js on macOS is to use a Node Version Manager rather than the standalone installer from the Node.js website.

### Why use a Version Manager?
* No Permission Issues: You won't need to use sudo when installing global packages.
* Multiple Versions: You can switch between Node versions easily (e.g., if an older project relies on Node 14 while a new one uses Node 22).
* Project-Specific Context: It can automatically switch versions when you enter a project directory.

## Fast Node Manager (fnm)

[fnm](https://github.com/Schniz/fnm) is a fast and simple Node.js version manager, built in Rust. It is cross-platform and faster than alternatives like nvm.

### Installation

To install fnm by **Homebrew**, run the following command:

```sh
brew install fnm
```

### Configuration

Add the following to your `~/.zshrc`:
```sh
eval "$(fnm env --use-on-cd)"
```
> The `--use-on-cd` flag enables automatic switching of Node versions when entering a directory with a `.node-version` or `.nvmrc` file.

If you work on a project that requires a specific Node version, run this inside the project folder:
```sh
node -v > .node-version
```
Now, whenever you cd into that folder, `fnm` will automatically assume that version (if you added the `--use-on-cd` flag during setup).

### Usage

| Action | Command |
| :--- | :--- |
| Install specific version | `fnm install 20` |
| Install latest LTS | `fnm install --lts` |
| Use specific version | `fnm use 20` |
| Set default version | `fnm default 20` |
| List installed versions | `fnm list` |
| List remote versions | `fnm list-remote` |
| Remove version | `fnm uninstall 20` |
| Show current version | `fnm current` |


