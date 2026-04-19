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
    url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.1.5/luffy-darwin-arm64"
    sha256 "6b495337330aad2ed609d609f6abbac98800e142f3699ae56c32236fbe8d896e"
  end

  on_intel do
    url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.1.5/luffy-darwin-amd64"
    sha256 "c23a8877d96be0a9064c0d89aa95d2b9cdb24f967e71b7731a65fe3af620b0e7"
  end


  def install
    bin.install Dir["luffy-darwin-*"].first => "luffy"
  end

  test do
    system "#{bin}/luffy", "--version"
  end

end
