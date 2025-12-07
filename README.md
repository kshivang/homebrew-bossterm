# Homebrew Tap for BossTerm

Modern terminal emulator built with Kotlin/Compose Desktop.

## Installation

```bash
brew tap kshivang/bossterm
brew install --cask bossterm
```

This installs:
- **BossTerm.app** - The terminal emulator application
- **bossterm** - Command line tool to open BossTerm from terminal

## Command Line Tool

After installation, you can use the `bossterm` command:

```bash
# Open BossTerm
bossterm

# Open in a specific directory
bossterm ~/Projects
bossterm -d /path/to/dir

# Open current directory
bossterm .

# Open a new window
bossterm --new-window

# Show help
bossterm --help
```

## Upgrade

```bash
brew upgrade --cask bossterm
```

## Uninstall

```bash
brew uninstall --cask bossterm
```

## About BossTerm

BossTerm is a modern terminal emulator featuring:
- Multiple tabs with keyboard shortcuts
- Nerd Font support with emoji rendering
- Mouse reporting for vim, tmux, htop
- Clipboard enhancements (copy-on-select, middle-click paste)
- Search with regex support
- Hyperlink detection
- IME support for CJK input
- Settings panel with live preview
- Debug tools for terminal inspection
- macOS code signing and notarization

## Links

- [BossTerm Repository](https://github.com/kshivang/BossTerm)
- [Releases](https://github.com/kshivang/BossTerm/releases)
