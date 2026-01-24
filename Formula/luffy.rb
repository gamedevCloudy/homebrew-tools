class Luffy < Formula

  desc "Stream and browse movies and shows directly from your terminal"
  homepage "https://github.com/DemonKingSwarn/luffy"
  url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.0.10/luffy-macos.aarch64"
  sha256 "b5405670e10c5eb17b92481ab6beb98e0fb2e2bf4d905d498f5ee7a2ff54512b"
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
