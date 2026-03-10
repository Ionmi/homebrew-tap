cask "openwhisper" do
  version "2.1"
  sha256 "660eed22d1b1f8e86bf92ff09256418ffb72e95a5f7c6a8df39fc2a7846de11f"

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
