cask "nanolight" do
  version "0.2.8"
  sha256 "f11c7873a681e9c646785a5fdf9d0264bf494429cc487be115853d0bee49627d"

  url "https://github.com/justrach/nanolight/releases/download/v#{version}/nanolight-macos-arm64.dmg"
  name "Nanolight"
  desc "Keyboard launcher for apps, math, search and Raycast extensions"
  homepage "https://github.com/justrach/nanolight"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself; brew only installs it.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Nanolight.app"
end
