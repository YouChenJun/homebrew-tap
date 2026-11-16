# YouChenJun Homebrew Tap

**简体中文** | [English](README.en.md)

本 Tap 用于发布 [scrcpy-harmony](https://github.com/YouChenJun/scrcpy-harmony) 的实验性 Homebrew 安装包。

## 安装

```sh
brew tap YouChenJun/tap
brew install scrcpy-harmony
```

安装后运行：

```sh
scrcpy-harmony --no-audio -w
```

## 环境要求

- macOS，Apple Silicon（arm64）
- 已 root 的 arm64 HarmonyOS / OpenHarmony 设备
- 已开启 USB 调试并授权当前电脑
- 已安装 `hdc`，并可在终端中执行 `hdc list targets`

当前 Homebrew 包提供免本地 SDK 的 root 后端，不附带 HarmonyOS SDK、`hdc`、签名私钥或用户设备的签名配置。

摄像头和手机端配套应用等扩展采集功能，仍需源码、HarmonyOS SDK 和签名环境。

## 升级与卸载

```sh
brew update
brew upgrade scrcpy-harmony

brew uninstall scrcpy-harmony
```

更多说明请查看[项目 README](https://github.com/YouChenJun/scrcpy-harmony#readme)。
