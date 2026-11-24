cask "pilcrow" do
  version "0.1.2"
  sha256 "34f624ca13148b5176b8e4e69450248714e183b6b7d910d29460484376849b8c"

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
