class ScrcpyHarmony < Formula
  desc "Experimental HarmonyOS screen mirroring and control for rooted devices"
  homepage "https://github.com/YouChenJun/scrcpy-harmony"
  url "https://github.com/YouChenJun/scrcpy-harmony/releases/download/v0.1.0/scrcpy-harmony-0.1.0-macos-arm64.tar.gz"
  sha256 "99f20073b20c3dc5e504bf413b85fdfea70633f771aa048ee8ba6255f0ddb60a"
  license "Apache-2.0"
  version "0.1.0"

  depends_on arch: :arm64
  depends_on :macos
  depends_on "ffmpeg"
  depends_on "libusb"
  depends_on "python@3.12"
  depends_on "sdl3"

  def install
    package = buildpath
    libexec.install package/"scrcpy-harmony.py"
    libexec.install package/"scrcpy"
    libexec.install package/"scrcpy-harmony-server"
    libexec.install package/"harmony"
    libexec.install package/"share"

    inreplace libexec/"scrcpy-harmony.py",
              "#!/usr/bin/env python3",
              "#!#{Formula["python@3.12"].opt_bin}/python3.12"
    chmod 0755, libexec/"scrcpy-harmony.py"
    chmod 0755, libexec/"scrcpy"
    chmod 0755, libexec/"scrcpy-harmony-server"
    bin.install_symlink libexec/"scrcpy-harmony.py" => "scrcpy-harmony"
  end

  test do
    assert_match "root", shell_output("#{bin}/scrcpy-harmony --help")
  end
end
