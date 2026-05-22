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
    url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.2.1/luffy-darwin-arm64"
    sha256 "f54b25f7d92a963c041d2cf06ffce18f8d66cb0015f9042446495852cc38322a"
  end

  on_intel do
    url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.2.1/luffy-darwin-amd64"
    sha256 "651a72148e6544e0d4e600fe3c5d9986833dbac75b05dd647a5e5ee47ec4ecd7"
  end


  def install
    bin.install Dir["luffy-darwin-*"].first => "luffy"
  end

  test do
    system "#{bin}/luffy", "--version"
  end

end
