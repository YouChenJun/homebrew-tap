# YouChenJun Homebrew Tap

[简体中文](README.md) | **English**

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

To include notification panels, the control center, and other system overlays:

```sh
scrcpy-harmony --include-system-overlays --no-audio -w
```

This option requires the root backend and primary display. It disables the default
system-window privacy masking, so notifications, verification codes, chat previews,
and input method content may appear in the mirror and recordings. It is off by
default.
