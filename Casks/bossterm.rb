cask "bossterm" do
  version "1.0.48"
  sha256 "e8283fe83fcfdc34339d214db4d1c57e37edd3614254f36c692efb07640ab96c"

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
