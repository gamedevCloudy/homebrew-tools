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
    url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.1.1/luffy-darwin-arm64"
    sha256 "9bcc0dabdd89a97e648acb2e064a6b8718e4be0e672ecbf1ced32350b9e91601"
  end

  on_intel do
    url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.1.1/luffy-darwin-amd64"
    sha256 "2577475f2b7b142e439959a076847415b06170dd96b0e0961e990f4d2ecf999f"
  end


  def install
    bin.install Dir["luffy-darwin-*"].first => "luffy"
  end

  test do
    system "#{bin}/luffy", "--version"
  end

end
