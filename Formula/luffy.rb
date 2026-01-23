class Luffy < Formula

  desc "Stream and browse movies and shows directly from your terminal"
  homepage "https://github.com/DemonKingSwarn/luffy"
  url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.0.9/luffy-macos.aarch64"
  sha256 "6ca3a7e93751a10f0263cd2c9f299adc40b877f326359b5629ba33d4c94d1231"
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
