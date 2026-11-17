class ScrcpyHarmony < Formula
  desc "Experimental HarmonyOS screen mirroring and control for rooted devices"
  homepage "https://github.com/YouChenJun/scrcpy-harmony"
  url "https://github.com/YouChenJun/scrcpy-harmony/releases/download/v0.2.1/scrcpy-harmony-0.2.1-macos-arm64.tar.gz"
  sha256 "37843afecc10a343be6604686bad1f693a0e08c0a74659c76f7fae7ce8ce20e8"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on "ffmpeg"
  depends_on "libusb"
  depends_on :macos
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
              "#!#{formula_opt_bin("python@3.12")}/python3.12"
    chmod 0755, libexec/"scrcpy-harmony.py"
    chmod 0755, libexec/"scrcpy"
    chmod 0755, libexec/"scrcpy-harmony-server"
    bin.install_symlink libexec/"scrcpy-harmony.py" => "scrcpy-harmony"
  end

  test do
    help = shell_output("#{bin}/scrcpy-harmony --help")
    assert_match "root", help
    assert_match "--include-system-overlays", help
  end
end
