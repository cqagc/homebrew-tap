cask "mulee" do
  version "0.1.7"
  sha256 "b184600c8274152aded312d2e3cdb48b1d03116ba5596c66293403884b56087d"

  url "https://github.com/cqagc/mulee/releases/download/v#{version}/Mulee-#{version}.dmg"
  name "Mulee"
  desc "Downloader for HTTP, BitTorrent, eD2k and video sites"
  homepage "https://github.com/cqagc/mulee"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Mulee.app"

  zap trash: [
    "~/Library/Application Support/Mulee",
    "~/Library/Caches/com.cqagc.mulee",
    "~/Library/HTTPStorages/com.cqagc.mulee",
    "~/Library/Preferences/com.cqagc.mulee.plist",
  ]
end
