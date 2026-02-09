class Luffy < Formula

  desc "Stream and browse movies and shows directly from your terminal"
  homepage "https://github.com/DemonKingSwarn/luffy"
  license "GPL-3.0-or-later"

  depends_on "chafa"
  depends_on "libsixel"
  depends_on "fzf"
  depends_on "yt-dlp"

  def caveats
   <<~EOS
     ⚠️IINA is required for playback on macOS.
     Install it manually:
       brew install --cask iina
   EOS
  end

  on_arm do
    url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.0.16/luffy-macos-arm64"
    sha256 "13e07e01b17ddf98672d4c8a1244353f814cbd04ffc2b7b7ed7bf0eb88e1c78e"
  end

  on_intel do
    url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.0.16/luffy-macos-amd64"
    sha256 "b08d5b36627c520f49f2a17a54b8477cde68b1e8cafad1082e216705ee882516"
  end


  def install
    bin.install Dir["luffy-macos-*"].first => "luffy"
  end

  test do
    system "#{bin}/luffy", "--version"
  end

end
