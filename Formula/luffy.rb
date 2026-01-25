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
    url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.0.12/luffy-macos-arm64"
    sha256 "1ef670492e4e0c0a1be134da80cae642a9e7cc1c4111cc7179d979dec3862406"
  end

  on_intel do
    url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.0.12/luffy-macos-amd64"
    sha256 "ce28b40d3e080af06a352d3c7e309bc27532d8aff6606475abba727609bc0ce4"
  end


  def install
    bin.install Dir["luffy-macos-*"].first => "luffy"
  end

  test do
    system "#{bin}/luffy", "--version"
  end

end
