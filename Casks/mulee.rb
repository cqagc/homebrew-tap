cask "mulee" do
  version "0.1.8"
  sha256 "777c033bd093c311d04593cc5b37b03b781af0c07173a460a6c2c18eb4d1423c"

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
