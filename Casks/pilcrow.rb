cask "pilcrow" do
  version "0.1.3"
  sha256 "d42afa497a2d410d545fe0a3c83659f108dd4b8815edc8010bdaa3a9c0abbd56"

  url "https://github.com/makyllc/pilcrow-releases/releases/download/v#{version}/Pilcrow-#{version}-arm64-developer-id.dmg"
  name "Pilcrow"
  desc "Markdown writing app with AI coaching"
  homepage "https://github.com/makyllc/pilcrow-releases"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Pilcrow.app"

  uninstall quit: "com.makyinmars.pilcrow"

  zap trash: [
    "~/Library/Application Support/Pilcrow",
    "~/Library/Preferences/com.makyinmars.pilcrow.plist",
  ]
end
