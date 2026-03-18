# Maestro

[Maestro](https://maestro.mobile.dev/) is a mobile UI testing framework for end-to-end testing on Android and iOS. It uses a simple YAML-based syntax to define test flows without dealing with flaky selectors or complex setup.

## Installation

To install Maestro, run the following command:

```sh
curl -Ls "https://get.maestro.mobile.dev" | bash
```

This installs the Maestro CLI to `~/.maestro/bin`.

### Configuration

The custom zsh script in this project adds `~/.maestro/bin` to your `PATH` when the directory exists.

## Usage

| Action | Command |
| :--- | :--- |
| Run a flow | `maestro test flow.yaml` |
| Run all flows in a directory | `maestro test flows/` |
| Launch Maestro Studio (interactive) | `maestro studio` |
| Record a flow | `maestro record flow.yaml` |
| View hierarchy of current screen | `maestro hierarchy` |
| Download samples | `maestro download-samples` |
| Check installed version | `maestro --version` |
| Upgrade Maestro | `curl -Ls "https://get.maestro.mobile.dev" \| bash` |

### Flow Example

```yaml
appId: com.example.app
---
- launchApp
- tapOn: "Login"
- inputText:
    id: "email"
    text: "test@example.com"
- inputText:
    id: "password"
    text: "password123"
- tapOn: "Submit"
- assertVisible: "Welcome"
```
