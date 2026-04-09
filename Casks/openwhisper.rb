cask "openwhisper" do
  version "2.3.8"
  sha256 "e5df10580a2e14076f27836daf14026029f28c5ffe6fd60436e3e952eddae968"

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
