class Ytx < Formula
  desc "Local YouTube transcriber for macOS — downloads audio and transcribes with Apple Speech.framework"
  homepage "https://github.com/Ionmi/ytx"
  url "https://github.com/Ionmi/ytx/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "25b8376b147ee5f58882cf0d765600dbb580d38c9b487e16c699250d15a4edd6"
  license "MIT"

  depends_on :macos => :tahoe
  depends_on "yt-dlp"

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/ytx"
  end

  def caveats
    <<~EOS
      Respect content creators' rights. Only download content you have permission to use.
    EOS
  end

  test do
    assert_match "USAGE: ytx", shell_output("#{bin}/ytx --help")
  end
end
