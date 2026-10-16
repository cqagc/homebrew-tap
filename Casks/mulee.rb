cask "mulee" do
  version "0.1.9"
  sha256 "5c7dd97de87d9d01aac11ce968192550120ac7aa3c87693265b6ad1a4ea205b7"

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
