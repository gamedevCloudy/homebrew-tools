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
    sha256 "1603ae27736e50bafbea3944b4cbc3e4d4d54adc6ce00d2ff140d225197612fc"
  end

  on_intel do
    url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.0.13/luffy-macos-amd64"
    sha256 "b72097886a9faed42b31c97df302fc266465d97f4f4404938055e80f1b149323"
  end


  def install
    bin.install Dir["luffy-macos-*"].first => "luffy"
  end

  test do
    system "#{bin}/luffy", "--version"
  end

end
