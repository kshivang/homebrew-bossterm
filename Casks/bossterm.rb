cask "bossterm" do
  version "1.2.129"
  sha256 "881c887bae481bf4295fa8c951d189badaff8477f6b916aca6a8e3d285e3fda6"

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
