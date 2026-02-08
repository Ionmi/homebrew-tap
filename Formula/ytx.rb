class Ytx < Formula
  desc "Local YouTube transcriber for macOS — downloads audio and transcribes with Apple Speech.framework"
  homepage "https://github.com/Ionmi/ytx"
  url "https://github.com/Ionmi/ytx/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "39550999f92c3566fa42b384bf8f04892373ff118e484c3f67668f8c8ca75c21"
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
