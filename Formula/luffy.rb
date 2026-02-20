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
    url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.0.18/luffy-darwin-arm64"
    sha256 "f2bea5034e9924a4caf0e5f1133b3161161bc122ce0beab2a39ba7cd1b2da4c0"
  end

  on_intel do
    url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.0.18/luffy-darwin-amd64"
    sha256 "6affbd3061350dbc52be66407ed7c86af00fc5fa0e7742a9466a24db05a07fe4"
  end


  def install
    bin.install Dir["luffy-darwin-*"].first => "luffy"
  end

  test do
    system "#{bin}/luffy", "--version"
  end

end
