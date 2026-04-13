class Luffy < Formula

  desc "Stream and browse movies and shows directly from your terminal"
  homepage "https://github.com/DemonKingSwarn/luffy"
  license "GPL-3.0-or-later"

  depends_on "chafa"
  depends_on "libsixel"
  depends_on "fzf"
  depends_on "yt-dlp"
  depends_on "ffmpeg"

  def caveats
   <<~EOS
     ⚠️IINA is required for playback on macOS.
     Install it manually:
       brew install --cask iina
   EOS
  end

  on_arm do
    url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.1.4/luffy-darwin-arm64"
    sha256 "c654972cc4fa8718aa1d78e65ba951486c12dd33226d148d8f11afeb445e872c"
  end

  on_intel do
    url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.1.4/luffy-darwin-amd64"
    sha256 "3d3ccb93c02d89e4abcf7b9b074bcbe4b4442566fdf37c8fda70f2fc24dfae2f"
  end


  def install
    bin.install Dir["luffy-darwin-*"].first => "luffy"
  end

  test do
    system "#{bin}/luffy", "--version"
  end

end
