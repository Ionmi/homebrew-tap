class Ytx < Formula
  desc "Local YouTube transcriber for macOS — downloads audio and transcribes with Apple Speech.framework"
  homepage "https://github.com/Ionmi/ytx"
  url "https://github.com/Ionmi/ytx/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7da4ec37f61f362c5a5b4e203ec1265f51c82e58f258990e8b8f12e6581d8de3"
  license "MIT"

  depends_on :macos => :tahoe
  depends_on "yt-dlp"

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/ytx"
  end

  test do
    assert_match "USAGE: ytx", shell_output("#{bin}/ytx --help")
  end
end
