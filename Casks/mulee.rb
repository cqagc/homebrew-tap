cask "mulee" do
  version "0.1.11"
  sha256 "9994ee08b3d81f9f988c8d53ae21180c60df776372aa279504f52a263b125f18"

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
