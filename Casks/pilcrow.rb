cask "pilcrow" do
  version "0.1.4"
  sha256 "0b1a191ae6b0da5db1fa9e806c226e0b3cd4360230072f1e1774b0453c60d64e"

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
