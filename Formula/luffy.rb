class Luffy < Formula

  desc "Stream and browse movies and shows directly from your terminal"
  homepage "https://github.com/DemonKingSwarn/luffy"
  url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.0.6/luffy_macos"
  sha256 "1dab265a09dd03348cd0a13c29cefdfca27fa7b7ffef515c48b8560355ef3002"
  license "GPL-3.0-or-later"

  depends_on "chafa"
  depends_on "libsixel"
  depends_on "fzf"
  depends_on "yt-dlp"

  on_linux do 
    depends_on "mpv"
  end

  on_macos do
    def caveats
      <<~EOS
        ⚠️IINA is required for playback on macOS.
        Install it manually:
          brew install --cask iina
      EOS
    end
  end

  def install
    bin.install "luffy_macos" => "luffy"
  end

  test do
    system "#{bin}/luffy", "--version"
  end

end
