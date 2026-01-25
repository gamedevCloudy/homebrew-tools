class Luffy < Formula

  desc "Stream and browse movies and shows directly from your terminal"
  homepage "https://github.com/DemonKingSwarn/luffy"
  url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.0.11/luffy-macos.aarch64"
  sha256 "0104ee30775648ed294dd48866afcb61e54b961db385694fa2cd2ffa8f3615d3"
  license "GPL-3.0-or-later"

  depends_on "chafa"
  depends_on "libsixel"
  depends_on "fzf"
  depends_on "yt-dlp"

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
    bin.install "luffy-macos.aarch64" => "luffy"
  end

  test do
    system "#{bin}/luffy", "--version"
  end

end
