# Java

The best practice for installing and managing Java (JDK) on macOS is to use a version manager rather than downloading installers directly from vendors.

### Why use a Version Manager?
* **Multiple Distributions**: Easily switch between JDK vendors (e.g., Temurin, GraalVM, Oracle) and versions.
* **Multiple Versions**: Run different Java versions for different projects (e.g., Java 17 for one project, Java 21 for another).
* **No Permission Issues**: Installs JDKs in your home directory without needing `sudo`.

## SDKMAN!

[SDKMAN!](https://sdkman.io/) is a tool for managing parallel versions of multiple Software Development Kits on Unix-based systems. It provides a convenient CLI to install, switch, remove, and list candidate versions of Java and other JVM-based tools (Gradle, Maven, Kotlin, etc.).

### Installation

To install SDKMAN!, run the following command:

```sh
curl -s "https://get.sdkman.io" | bash
```

### Configuration

SDKMAN! automatically adds initialization to your shell profile. The custom zsh script in this project sets it up via:
```sh
export SDKMAN_DIR="$HOME/.sdkman"
export SDKMAN_AUTO_ENV=true
source "$SDKMAN_DIR/bin/sdkman-init.sh"
```
> The `SDKMAN_AUTO_ENV=true` setting enables automatic switching of Java versions when entering a directory with a `.sdkmanrc` file.

If you work on a project that requires a specific Java version, create a `.sdkmanrc` file inside the project folder:
```sh
sdk env init
```
Now, whenever you cd into that folder, SDKMAN! will automatically switch to the specified version.

### Usage

| Action | Command |
| :--- | :--- |
| List available Java versions | `sdk list java` |
| Install specific version | `sdk install java 21.0.5-tem` |
| Use specific version (current shell) | `sdk use java 21.0.5-tem` |
| Set default version | `sdk default java 21.0.5-tem` |
| Show current version | `sdk current java` |
| Remove version | `sdk uninstall java 21.0.5-tem` |
| Update SDKMAN! | `sdk update` |
| Upgrade installed candidates | `sdk upgrade` |
| Initialize project env | `sdk env init` |
| Switch to project env | `sdk env` |
