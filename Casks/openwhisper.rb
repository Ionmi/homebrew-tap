cask "openwhisper" do
  version "2.3.4"
  sha256 "e753cfd83e0b7d537bff6bced565555cf3dc78a930aa652ec46baf48415a9078"

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
