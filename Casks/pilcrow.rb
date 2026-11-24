cask "pilcrow" do
  version "0.1.1"
  sha256 "7c944dd6ba9a909fa005748c3680e5ccf6ba38108523ba6155962de505fb3d9b"

  url "https://github.com/makyinmars/pilcrow-releases/releases/download/v#{version}/Pilcrow-#{version}-universal-developer-id.dmg"
  name "Pilcrow"
  desc "Markdown writing app with AI coaching"
  homepage "https://github.com/makyinmars/pilcrow-releases"

  depends_on macos: :sonoma

  app "Pilcrow.app"

  uninstall quit: "com.makyinmars.pilcrow"

  zap trash: [
    "~/Library/Application Support/Pilcrow",
    "~/Library/Preferences/com.makyinmars.pilcrow.plist",
  ]
end
