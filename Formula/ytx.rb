class Ytx < Formula
  desc "Local YouTube transcriber for macOS — downloads audio and transcribes with Apple Speech.framework"
  homepage "https://github.com/Ionmi/ytx"
  url "https://github.com/Ionmi/ytx/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "c0ac2333173454037b0478dad7dddbe9715ce11402b648573f927f8b630aefb9"
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
