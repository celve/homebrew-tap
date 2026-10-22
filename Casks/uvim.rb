cask "uvim" do
  version "1.1.2"
  sha256 "b8184ac0becf9069b3743c195d51a5f0919c928f6b7e31fd9cab063df5840eb1"

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
