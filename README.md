# YouChenJun Homebrew Tap

Experimental packages for [scrcpy-harmony](https://github.com/YouChenJun/scrcpy-harmony).

## Install

```sh
brew tap YouChenJun/tap
brew install scrcpy-harmony
```

Requirements: macOS on Apple Silicon, a rooted arm64 HarmonyOS/OpenHarmony device,
USB debugging authorization, and `hdc` on `PATH`. The Homebrew package provides the
native root backend; it does not bundle HarmonyOS SDKs, hdc, signing keys, or
user-specific device profiles.

```sh
scrcpy-harmony --backend=root --no-audio -w
```
