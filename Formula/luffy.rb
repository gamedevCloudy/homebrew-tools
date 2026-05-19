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
    url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.2.0/luffy-darwin-arm64"
    sha256 "79a0b0a12b72d3778a9575ce6a4e4cf2c036611353f6d171e8b670652c8b19cd"
  end

  on_intel do
    url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.2.0/luffy-darwin-amd64"
    sha256 "82d86154cc2f0d9ba59cdaf17109a57e6e5c4cf5375f22a457467f2d5bddc8ac"
  end


  def install
    bin.install Dir["luffy-darwin-*"].first => "luffy"
  end

  test do
    system "#{bin}/luffy", "--version"
  end

end
