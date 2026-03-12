# iOS

The standard way to develop iOS apps on macOS is through **Xcode**, which includes the iOS SDK, Simulator, and all necessary build tools.

## Xcode

[Xcode](https://developer.apple.com/xcode/) is the official IDE for iOS (and macOS/watchOS/tvOS) development. It includes Interface Builder, the iOS Simulator, Instruments, and the Swift/Objective-C compilers.

### Installation

To install Xcode, download it from the **Mac App Store** or use the following command to install the command-line tools:

```sh
xcode-select --install
```

## AXe

[AXe](https://github.com/cameroncooke/AXe) is a standalone command-line tool for automating iOS Simulators using Apple's Accessibility APIs and HID (Human Interface Device) functionality. It is a single-binary solution requiring no server setup, making it ideal for scripting and CI/CD integration.

### Installation

To install AXe by **Homebrew**, run the following command:

```sh
brew install cameroncooke/axe/axe
```

### Usage

| Action | Command |
| :--- | :--- |
| List available simulators | `axe list-simulators` |
| Tap at coordinates | `axe tap -x 100 -y 200 --udid SIMULATOR_UDID` |
| Type text | `axe type 'Hello World!' --udid SIMULATOR_UDID` |
| Swipe gesture | `axe swipe --start-x 100 --start-y 300 --end-x 300 --end-y 100 --udid SIMULATOR_UDID` |
| Preset gesture (scroll up) | `axe gesture scroll-up --udid SIMULATOR_UDID` |
| Press home button | `axe button home --udid SIMULATOR_UDID` |
| Take a screenshot | `axe screenshot --udid SIMULATOR_UDID` |
| Record video | `axe record-video --udid SIMULATOR_UDID --fps 15 --output recording.mp4` |
| Stream video (MJPEG) | `axe stream-video --udid SIMULATOR_UDID --fps 30 --format mjpeg` |
| Describe UI at point | `axe describe-ui --udid SIMULATOR_UDID` |
| Batch operations | `axe batch --udid SIMULATOR_UDID --step "tap --id SearchField" --step "type 'query'"` |
