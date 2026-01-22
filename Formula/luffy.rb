class Luffy < Formula

  desc "Stream and browse movies and shows directly from your terminal"
  homepage "https://github.com/DemonKingSwarn/luffy"
  url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.0.7/luffy_macos"
  sha256 "9bdbb30302aae1f44c7b2fd2e2a44a58f59e9753b180ec7c845dd636a40feab5"
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
    bin.install "luffy_macos" => "luffy"
  end

  test do
    system "#{bin}/luffy", "--version"
  end

end
