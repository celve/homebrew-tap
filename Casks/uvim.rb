cask "uvim" do
  version "1.1.1"
  sha256 "40de267d47275aa8ff32398c0b3e6ff88c2ae23c1f032f84d29db47f13aff4e5"

  url "https://github.com/celve/uvim/releases/download/v#{version}/uvim-#{version}.zip"
  name "uvim"
  desc "Vim's modal editing in the text fields of any app"
  homepage "https://uvim.app/"

  livecheck do
    url "https://github.com/celve/uvim/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "uvim.app"

  uninstall quit: "io.github.celve.uvim"

  zap trash: [
    "~/Library/Application Support/uvim",
    "~/Library/Caches/io.github.celve.uvim",
    "~/Library/HTTPStorages/io.github.celve.uvim",
    "~/Library/HTTPStorages/io.github.celve.uvim.binarycookies",
    "~/Library/Preferences/io.github.celve.uvim.plist",
  ]
end
