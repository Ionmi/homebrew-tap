cask "openwhisper" do
  version "2.1.1"
  sha256 "c6b1309f4c284200e6c2a0540e9fde6e8929d1f194269d5a92a5bf6c1aab23ac"

  url "https://github.com/Ionmi/OpenWhisper/releases/download/#{version}/OpenWhisper.zip"
  name "OpenWhisper"
  desc "Local voice-to-text for macOS using on-device Whisper"
  homepage "https://github.com/Ionmi/OpenWhisper"

  app "OpenWhisper.app"

  zap trash: [
    "~/Library/Application Support/OpenWhisper",
    "~/Library/Preferences/com.ionmi.OpenWhisper.plist",
    "~/Library/Caches/com.ionmi.OpenWhisper",
  ]
end
