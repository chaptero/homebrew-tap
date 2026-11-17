cask "drawer" do
  version "1.3"
  sha256 "b443bf385c03135cbc4b0b8066b19f3ab134fcae8848ca56e3dcd8ef28257c81"

  url "https://github.com/chaptero/Drawer/releases/download/v1.3/Drawer.dmg"
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
