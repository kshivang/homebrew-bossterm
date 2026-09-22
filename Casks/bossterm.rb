cask "bossterm" do
  version "1.2.166"
  sha256 "44befccf2740131de4143d7fd4483fd5336860d188566e2c017e835e3b633190"

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
