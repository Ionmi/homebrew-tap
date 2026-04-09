cask "openwhisper" do
  version "2.3.6"
  sha256 "6b896984d653e3bc5c6456216ae76c1a49e556eee647041e77dbd4b94af447db"

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
