cask "drawer" do
  version "1.4"
  sha256 "fabce52275051620db66db7b497d60e45aa588a0d9e764550e93a6b283b13778"

  url "https://github.com/chaptero/Drawer/releases/download/v1.4/Drawer.dmg"
  name "Drawer"
  desc "Tuck menu bar icons into a drawer behind a single chevron"
  homepage "https://github.com/chaptero/Drawer"

  # Drawer updates itself (Sparkle), so Homebrew leaves updating to it.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Drawer.app"

  uninstall quit: "app.drawer.Drawer"

  zap trash: [
    "~/Library/Application Support/Drawer",
    "~/Library/Caches/app.drawer.Drawer",
    "~/Library/HTTPStorages/app.drawer.Drawer",
    "~/Library/Preferences/app.drawer.Drawer.plist",
  ]
end
