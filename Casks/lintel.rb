cask "lintel" do
  version "0.1.5"
  sha256 "7e2705e0c4ecbf9108a8261d1daeef30d31563a56c1b4baf44aca7e495c9abe5"

  url "https://github.com/Netesh5/lintel/releases/download/v#{version}/Lintel-#{version}.zip"
  name "Lintel"
  desc "Live activities around the notch: timers, music, Claude Code, a file shelf"
  homepage "https://netesh5.github.io/lintel/"

  livecheck do
    url "https://raw.githubusercontent.com/Netesh5/lintel/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Lintel.app"

  uninstall quit: "com.netesh.Lintel"

  zap trash: [
    "~/.claude/lintel",
    "~/Library/Application Scripts/com.netesh.Lintel",
    "~/Library/Caches/com.netesh.Lintel",
    "~/Library/Containers/com.netesh.Lintel",
  ]

  caveats <<~EOS
    Lintel isn't notarized yet, so the first time you open it macOS blocks it.
    Open System Settings › Privacy & Security and click "Open Anyway".

    Using Claude Code? Before uninstalling, turn off Claude Code in
    Lintel's Settings › Activities so it removes its hook.
  EOS
end
