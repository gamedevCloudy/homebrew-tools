cask "nanolight" do
  version "0.2.10"
  sha256 "7b234761201cf7f82d184ae387a783b8932803a41168533db222b05a866d9445"

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
