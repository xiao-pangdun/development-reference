# Android

The standard way to set up Android development on macOS is through **Android Studio**, which bundles the Android SDK, emulator, and build tools.

## Android Studio

[Android Studio](https://developer.android.com/studio) is the official IDE for Android development. It includes the Android SDK, AVD Manager, and all necessary build tools.

### Installation

To install Android Studio by **Homebrew**, run the following command:

```sh
brew install --cask android-studio
```

### Configuration

After installing Android Studio, launch it and complete the setup wizard. This will download the Android SDK to `~/Library/Android/sdk` by default.

The custom zsh script in this project sets up the required environment variables:
```sh
export ANDROID_HOME="$HOME/Library/Android/sdk"
```

It also adds the following directories to your `PATH`:
- `$ANDROID_HOME/emulator` - Android emulator
- `$ANDROID_HOME/platform-tools` - `adb`, `fastboot`, etc.
- `$ANDROID_HOME/cmdline-tools/latest/bin` - `sdkmanager`, `avdmanager`, etc.

### Usage

| Action | Command |
| :--- | :--- |
| List installed packages | `sdkmanager --list_installed` |
| List available packages | `sdkmanager --list` |
| Install a package | `sdkmanager "platforms;android-35"` |
| Update all packages | `sdkmanager --update` |
| List available AVDs | `avdmanager list avd` |
| Create an AVD | `avdmanager create avd -n Pixel_8 -k "system-images;android-35;google_apis;arm64-v8a"` |
| Start an emulator | `emulator -avd Pixel_8` |
| List connected devices | `adb devices` |
| Install APK on device | `adb install app.apk` |
| View device logs | `adb logcat` |
