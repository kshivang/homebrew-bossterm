cask "bossterm" do
  version "1.0.15"
  sha256 "3fd72f578b2e7865cd58464589d7e4f59715a0c651e8ff00939610e6c478a9e9"

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

  # Install CLI tool for terminal access
  binary "BossTerm.app/Contents/Resources/bossterm"

  postflight do
    # Ensure CLI is executable
    set_permissions "#{HOMEBREW_PREFIX}/bin/bossterm", "0755"
  end

  zap trash: [
    "~/Library/Application Support/BossTerm",
    "~/Library/Caches/ai.rever.bossterm",
    "~/Library/Preferences/ai.rever.bossterm.plist",
    "~/Library/Saved Application State/ai.rever.bossterm.savedState",
    "~/.bossterm",
  ]
end
