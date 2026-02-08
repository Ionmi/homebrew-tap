class Ytx < Formula
  desc "Local YouTube transcriber for macOS — downloads audio and transcribes with Apple Speech.framework"
  homepage "https://github.com/Ionmi/ytx"
  url "https://github.com/ionmi/ytx/releases/download/v0.4.0/ytx-0.4.0-arm64-macos.tar.gz"
  sha256 "31e41f721ba4dabdd14aa9eb435d7653362c50043d8aa6590baa819149984afe"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos => :tahoe
  depends_on "yt-dlp"

  def install
    bin.install "ytx"
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
