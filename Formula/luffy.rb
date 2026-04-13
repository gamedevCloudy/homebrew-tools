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
    sha256 "e60d0bbd53f9c22637aff3f5abe7e2422b52ab1661b47d6a8614239a63611a16"
  end

  on_intel do
    url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.1.4/luffy-darwin-amd64"
    sha256 "70f258c3f1109e6bea691a034794ba23e7cf68cf115f056a66ada4ffb32015a3"
  end


  def install
    bin.install Dir["luffy-darwin-*"].first => "luffy"
  end

  test do
    system "#{bin}/luffy", "--version"
  end

end
