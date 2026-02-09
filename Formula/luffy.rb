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
    url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.0.13/luffy-macos-arm64"
    sha256 "321224d3fb4e5b0aae52f63657f694e37636d3d6c5ede1859f7f7aa1768693ae"
  end

  on_intel do
    url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.0.13/luffy-macos-amd64"
    sha256 "c241abedac90552cbb8c22d5a5741a5354e65bcbab823cfd198aef5b5eebef71"
  end


  def install
    bin.install Dir["luffy-macos-*"].first => "luffy"
  end

  test do
    system "#{bin}/luffy", "--version"
  end

end
