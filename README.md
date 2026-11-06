# Netesh5's Homebrew tap

## Lintel

Live activities around your Mac's notch: timers, music, Claude Code, a drag-and-drop shelf with
AirDrop, quick notes and more. Free for macOS 14 and later. https://netesh5.github.io/lintel/

```bash
brew install --cask netesh5/tap/lintel
```

Lintel isn't notarized yet, so the first time you open it macOS blocks it: open
System Settings › Privacy & Security and click **Open Anyway**.

Lintel updates itself; `brew upgrade --cask lintel` also works.

Uninstall with `brew uninstall --cask lintel` (add `--zap` to remove its settings too). If you use
Claude Code, first turn off Claude Code in Lintel's Settings › Activities so it removes its hook.

The cask is `Casks/lintel.rb`, updated automatically with each release.
