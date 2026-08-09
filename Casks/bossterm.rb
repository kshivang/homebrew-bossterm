cask "bossterm" do
  version "1.2.149"
  sha256 "25b088a9e021425c700cffcd66f88b1177b5e028b3605af4f8dc0dae8c171e35"

  url "https://github.com/kshivang/BossTerm/releases/download/v#{version}/BossTerm-#{version}.dmg",
      verified: "github.com/kshivang/BossTerm/"
  name "BossTerm"
  desc "Modern terminal emulator built with Kotlin/Compose Desktop"
  homepage "https://github.com/kshivang/BossTerm"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "BossTerm.app"

  zap trash: [
    "~/Library/Application Support/BossTerm",
    "~/Library/Caches/ai.rever.bossterm",
    "~/Library/Preferences/ai.rever.bossterm.plist",
    "~/Library/Saved Application State/ai.rever.bossterm.savedState",
    "~/.bossterm",
  ]
end
